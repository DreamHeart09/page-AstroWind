# AIGov Insight Page - 离线部署指南

## 📦 文件说明

| 文件                               | 说明                            |
| ---------------------------------- | ------------------------------- |
| `aigov-insight-page.tar.gz`        | Docker 镜像文件                 |
| `aigov-insight-page.tar.gz.sha256` | SHA256 校验文件                 |
| `docker-compose.yml`               | Docker Compose 配置文件（可选） |

## 🚀 快速部署

### 方式一：docker run（推荐）

```bash
# 1. 加载镜像
docker load -i aigov-insight-page.tar.gz

# 2. 启动容器
docker run -d -p 8080:8080 --name aigov-insight-page aigov-insight-page:v0.3.0

# 3. 访问
# http://localhost:8080/
```

### 方式二：docker compose

```bash
# 1. 加载镜像
docker load -i aigov-insight-page.tar.gz

# 2. 启动服务
docker compose up -d

# 3. 访问
# http://localhost:8080/
```

## 🔧 常用命令

```bash
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
docker rmi aigov-insight-page:v0.3.0
```

## 🌐 端口配置

默认端口：`8080`

修改端口（以 9000 为例）：

```bash
# docker run 方式
docker run -d -p 9000:8080 --name aigov-insight-page aigov-insight-page:v0.3.0

# docker compose 方式：修改 docker-compose.yml 中的 ports 配置
# ports:
#   - 9000:8080
```
