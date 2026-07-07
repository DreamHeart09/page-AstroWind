#!/bin/bash

set -e

IMAGE_NAME="aigov-insight-page"
# 支持 ./build-docker.sh [tag]，tag 可带或不带 v 前缀，不传默认 v0.4.0
RAW_TAG="${1:-v0.4.0}"
IMAGE_TAG="${RAW_TAG#v}"
IMAGE_TAG="v${IMAGE_TAG}"
OUTPUT_DIR="./dist-docker"
BUILD_BASE="${ASTRO_BASE:-/}"

BOLD="\033[1m"
RESET="\033[0m"
GREEN="\033[32m"
BLUE="\033[34m"
CYAN="\033[36m"
YELLOW="\033[33m"
DIM="\033[2m"

echo ""
echo -e "${BOLD}${CYAN}╔════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${CYAN}║${RESET}                                                            ${BOLD}${CYAN}║${RESET}"
echo -e "${BOLD}${CYAN}║${RESET}   ${BOLD}🚀 AIGov Insight Page - Docker Build${RESET}                    ${BOLD}${CYAN}║${RESET}"
echo -e "${BOLD}${CYAN}║${RESET}                                                            ${BOLD}${CYAN}║${RESET}"
echo -e "${BOLD}${CYAN}╚════════════════════════════════════════════════════════════╝${RESET}"
echo ""
echo -e "  ${BLUE}▸${RESET} ${DIM}Image:${RESET}  ${BOLD}${IMAGE_NAME}:${IMAGE_TAG}${RESET}"
echo -e "  ${BLUE}▸${RESET} ${DIM}Base:${RESET}   ${BOLD}${BUILD_BASE}${RESET}"
echo ""

echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 1/6${RESET} ${DIM}Building Docker image...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
ASTRO_BASE="${BUILD_BASE}" IMAGE_TAG="${IMAGE_TAG}" docker compose build

echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 2/6${RESET} ${DIM}Creating output directory...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
mkdir -p ${OUTPUT_DIR}

echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 3/6${RESET} ${DIM}Exporting Docker image...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
OUTPUT_FILE="${OUTPUT_DIR}/${IMAGE_NAME}.tar.gz"
docker save ${IMAGE_NAME}:${IMAGE_TAG} | gzip > ${OUTPUT_FILE}

echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 4/6${RESET} ${DIM}Copying docker-compose.yml...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
# 生成固定版本号的 docker-compose.yml，避免目标服务器缺少 IMAGE_TAG 环境变量
sed "s/\${IMAGE_TAG:-[^}]*}/${IMAGE_TAG}/g" docker-compose.yml > ${OUTPUT_DIR}/docker-compose.yml

echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 5/6${RESET} ${DIM}Generating checksum...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
sha256sum ${OUTPUT_FILE} > "${OUTPUT_FILE}.sha256"

echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo -e "  ${GREEN}⣿${RESET} ${BOLD}Step 6/6${RESET} ${DIM}Generating README...${RESET}"
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
cat > ${OUTPUT_DIR}/README.md << EOF
# AIGov Insight Page - 离线部署指南

## 📦 文件说明

| 文件 | 说明 |
|------|------|
| `aigov-insight-page.tar.gz` | Docker 镜像文件 |
| `aigov-insight-page.tar.gz.sha256` | SHA256 校验文件 |
| `docker-compose.yml` | Docker Compose 配置文件（可选） |

## 🚀 快速部署

### 方式一：docker run（推荐）

\`\`\`bash
# 1. 加载镜像
docker load -i aigov-insight-page.tar.gz

# 2. 启动容器
docker run -d -p 8080:8080 --name aigov-insight-page aigov-insight-page:${IMAGE_TAG}

# 3. 访问
# http://localhost:8080/
\`\`\`

### 方式二：docker compose

\`\`\`bash
# 1. 加载镜像
docker load -i aigov-insight-page.tar.gz

# 2. 启动服务
docker compose up -d

# 3. 访问
# http://localhost:8080/
\`\`\`

## 🔧 常用命令

\`\`\`bash
# 验证文件完整性
sha256sum -c aigov-insight-page.tar.gz.sha256

# 查看容器状态
docker ps

# 查看容器日志
docker logs aigov-insight-page

# 停止容器
docker stop aigov-insight-page

# 启动容器
docker start aigov-insight-page

# 删除容器
docker rm -f aigov-insight-page

# 删除镜像
docker rmi aigov-insight-page:${IMAGE_TAG}
\`\`\`

## 🌐 端口配置

默认端口：\`8080\`

修改端口（以 9000 为例）：

\`\`\`bash
# docker run 方式
docker run -d -p 9000:8080 --name aigov-insight-page aigov-insight-page:${IMAGE_TAG}

# docker compose 方式：修改 docker-compose.yml 中的 ports 配置
# ports:
#   - 9000:8080
\`\`\`

EOF

echo ""
echo -e "${BOLD}${GREEN}✓ Build completed successfully!${RESET}"
echo ""
echo -e "${DIM}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "${DIM}│${RESET} ${BOLD}📦 Output Files${RESET}                                          ${DIM}│${RESET}"
echo -e "${DIM}├──────────────────────────────────────────────────────────┤${RESET}"
echo -e "${DIM}│${RESET}  ${CYAN}•${RESET} ${OUTPUT_FILE}"
echo -e "${DIM}│${RESET}  ${CYAN}•${RESET} ${OUTPUT_FILE}.sha256"
echo -e "${DIM}│${RESET}  ${CYAN}•${RESET} ${OUTPUT_DIR}/docker-compose.yml"
echo -e "${DIM}│${RESET}  ${CYAN}•${RESET} ${OUTPUT_DIR}/README.md"
echo -e "${DIM}│${RESET}                                                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${YELLOW}Size:${RESET} $(du -h ${OUTPUT_FILE} | cut -f1)                                              ${DIM}│${RESET}"
echo -e "${DIM}└──────────────────────────────────────────────────────────┘${RESET}"

echo ""
echo -e "${BOLD}${BLUE}📖 Deployment Guide${RESET}"
echo ""
echo -e "${DIM}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "${DIM}│${RESET}                                                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${BOLD}GitHub Pages (Default)${RESET}                                  ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${DIM}─────────────────────${RESET}                                  ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} Push code to GitHub                                  ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} URL: https://<user>.github.io/page-AstroWind/       ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}                                                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${BOLD}Private Server (Root Path)${RESET}                            ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${DIM}─────────────────────────${RESET}                            ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} Run: ${CYAN}./build-docker.sh${RESET}                             ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} URL: http://localhost:8080/                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}                                                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${BOLD}Private Server (Custom Path)${RESET}                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${DIM}────────────────────────────${RESET}                          ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} Run: ${CYAN}ASTRO_BASE=/your-path/ ./build-docker.sh${RESET}       ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}  ${GREEN}→${RESET} URL: http://localhost:8080/your-path/               ${DIM}│${RESET}"
echo -e "${DIM}│${RESET}                                                          ${DIM}│${RESET}"
echo -e "${DIM}└──────────────────────────────────────────────────────────┘${RESET}"

echo ""
echo -e "${BOLD}${YELLOW}📋 Offline Deployment Steps${RESET}"
echo ""
echo -e "  ${DIM}1.${RESET} Copy files to target server:"
echo -e "     ${CYAN}•${RESET} ${IMAGE_NAME}.tar.gz"
echo -e "     ${CYAN}•${RESET} ${IMAGE_NAME}.tar.gz.sha256"
echo -e "     ${CYAN}•${RESET} docker-compose.yml ${DIM}(optional)${RESET}"
echo -e "     ${CYAN}•${RESET} README.md"
echo ""
echo -e "  ${DIM}2.${RESET} Verify integrity:"
echo -e "     ${BOLD}sha256sum -c ${IMAGE_NAME}.tar.gz.sha256${RESET}"
echo ""
echo -e "  ${DIM}3.${RESET} Load image:"
echo -e "     ${BOLD}docker load -i ${IMAGE_NAME}.tar.gz${RESET}"
echo ""
echo -e "  ${DIM}4.${RESET} Start service (choose one):"
echo ""
echo -e "     ${GREEN}Option A:${RESET} ${DIM}Using docker run (recommended)${RESET}"
echo -e "     ${BOLD}docker run -d -p 8080:8080 --name ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_TAG}${RESET}"
echo ""
echo -e "     ${GREEN}Option B:${RESET} ${DIM}Using docker compose${RESET}"
echo -e "     ${BOLD}docker compose up -d${RESET}"
echo ""
echo -e "  ${DIM}5.${RESET} Access: ${BOLD}http://localhost:8080${BUILD_BASE}${RESET}"
echo ""
echo -e "${DIM}────────────────────────────────────────────────────────────${RESET}"
echo ""
