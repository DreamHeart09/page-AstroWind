# 🛡️ AIGov-Insight

🌟 _全球领先的 AI 自主智能体全链路可观测平台_ 🌟

**AIGov-Insight** 是恒安嘉新（Eversec）打造的一款面向新一代 AI 系统的安全可观测平台。基于 **Astro 5.0** 与 **Tailwind CSS** 构建官方网站，专注于展示产品能力、解决方案与开源社区动态。

> **AI 世界的行车记录仪** —— 让 LLM / Agent / MCP / RAG / OpenClaw 的每一次“思考”与“行动”全程透明、可溯、可控。

- ✅ **零侵入部署**：基于 eBPF 内核探针技术，旁路采集，无需修改业务代码。
- ✅ **全链路追踪**：自动关联 AG-UI、LLM、MCP、EXEC、FILE 等多源异构日志。
- ✅ **OpenClaw 智能防护**：支持拦截、二次确认、告警三种精细化处置模式。
- ✅ **双引擎架构**：Agent 负责高效采集，Web 负责智能还原与可视化分析。
- ✅ **开源生态**：Web 前端与 Agent 探针均已开源，欢迎共建。

<br>

[![Eversec](https://img.shields.io/badge/made%20by-Eversec-556bf2?style=flat-square&logo=github&logoColor=white&labelColor=101827)](https://github.com/Eversec-ai)
[![License](https://img.shields.io/github/license/Eversec-ai/AIGov-Insight-Web?style=flat-square&color=dddddd&labelColor=000000)](https://github.com/Eversec-ai/AIGov-Insight-Web/blob/main/LICENSE.md)
[![Astro](https://img.shields.io/badge/Astro-5.0-BC52EE?style=flat-square&logo=astro&logoColor=white)](https://astro.build/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-3.4-38B2AC?style=flat-square&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)
[![GitHub Stars](https://img.shields.io/github/stars/Eversec-ai/AIGov-Insight-Web.svg?style=social&label=stars&maxAge=86400&color=ff69b4)](https://github.com/Eversec-ai/AIGov-Insight-Web)

<br>

<details open>
<summary>目录</summary>

- [产品简介](#产品简介)
- [核心能力](#核心能力)
- [双引擎架构](#双引擎架构)
- [快速开始](#快速开始)
  - [项目结构](#项目结构)
  - [常用命令](#常用命令)
  - [配置文件](#配置文件)
  - [本地开发](#本地开发)
  - [Docker 部署](#docker-部署)
- [开源项目](#开源项目)
- [常见问题](#常见问题)
- [关于恒安嘉新](#关于恒安嘉新)
- [许可证](#许可证)

</details>

<br>

## 产品简介

AIGov-Insight 专为解决 AI 系统“黑盒运行、难以审计、风险难溯”的痛点而生。当 AI 从“聊天机器人”进化为“做事智能体”，每一次工具调用、系统命令执行、敏感文件访问都可能成为安全隐患。AIGov-Insight 通过 eBPF 内核探针与智能会话关联算法，构建从用户提问到 AI 推理、再到工具执行的全链路证据链，帮助企业实现：

- **透明**：完整还原 AI 决策与执行过程。
- **可溯**：一键定位风险事件的完整因果链。
- **可控**：实时拦截、告警、二次确认危险操作。

<br>

## 核心能力

### 1. 全链路可观测

毫秒级捕获大模型流量、系统命令执行与敏感文件访问，完整还原 LLM / Agent / MCP / RAG 的运行全貌。

### 2. 智能会话关联

独创全链路智能会话关联算法，自动聚合多源异构日志，精准建立：

```text
用户提问 → AI 推理 → 工具调用 → 系统执行 → 结果反馈
```

### 3. MCP 工具追踪

深度解析 MCP（Model Context Protocol）工具调用，监控 Agent 的“决策-行动”闭环，适配 LangChain、Dify 等主流框架。

### 4. OpenClaw 智能防护中心

基于 OpenClaw 智能防护引擎，实现从“被动观测”到“主动治理”的跨越：

- **智能拦截**：阻断高危操作。
- **二次确认**：对敏感操作要求人工复核。
- **告警通知**：实时推送风险事件。

预置规则库开箱即用，同时支持丰富的自定义规则扩展，为 AI 智能体加装“安全刹车片”。

### 5. 双引擎协同

- **AIGov-Insight Agent**：基于 eBPF 的智能数据采集探针，运行在内核态，零业务侵入。
- **AIGov-Insight Web**：现代化可观测分析界面，提供流畅、直观、极具视觉冲击力的数据可视化体验。

<br>

## 双引擎架构

```text
┌─────────────────────────────────────────────────────────────┐
│                     AIGov-Insight Web                        │
│  (Astro + Tailwind / 现代化智能大厦架构 / 可视化分析层)        │
└──────────────────────────┬──────────────────────────────────┘
                           │
┌──────────────────────────▼──────────────────────────────────┐
│                   AIGov-Insight Agent                        │
│  (eBPF 内核探针 / LLM 流量识别 / MCP 追踪 / 命令执行监控)      │
└─────────────────────────────────────────────────────────────┘
```

- **Agent** 高效采集大模型或智能体特有流量，精准捕获每一个 AI 行为。
- **Web** 智能还原与可视化分析，让复杂数据变得直观易懂。

<br>

## 快速开始

### 项目结构

```
/
├── public/                  # 静态资源
│   ├── screenshots/         # 产品截图
│   └── robots.txt
├── src/
│   ├── assets/              # 图片、样式、图标
│   ├── components/          # Astro 组件
│   │   ├── blog/            # 博客相关组件
│   │   ├── common/          # 通用组件
│   │   ├── ui/              # UI 基础组件
│   │   └── widgets/         # 页面模块组件
│   ├── content/             # 内容集合（博客文章等）
│   ├── data/post/           # Markdown / MDX 文章
│   ├── layouts/             # 页面布局
│   ├── pages/               # 路由页面
│   ├── utils/               # 工具函数
│   ├── config.yaml          # 站点配置
│   └── navigation.ts        # 导航配置
├── nginx/                   # Nginx 配置
├── Dockerfile               # Docker 构建文件
├── docker-compose.yml       # Docker Compose 配置
├── build-docker.sh          # Docker 离线构建脚本
├── astro.config.ts          # Astro 配置
├── tailwind.config.js       # Tailwind CSS 配置
└── package.json
```

<br>

### 常用命令

所有命令均在项目根目录下执行：

| Command             | Action                                    |
| :------------------ | :---------------------------------------- |
| `npm install`       | 安装依赖                                  |
| `npm run dev`       | 启动本地开发服务器，默认 `localhost:4321` |
| `npm run build`     | 构建生产版本到 `./dist/`                  |
| `npm run preview`   | 本地预览生产构建                          |
| `npm run check`     | 检查 Astro、ESLint、Prettier              |
| `npm run fix`       | 自动修复 ESLint 与 Prettier 问题          |
| `npm run astro ...` | 运行 Astro CLI 命令                       |

<br>

### 配置文件

站点基础配置位于 [`./src/config.yaml`](./src/config.yaml)：

```yaml
site:
  name: AIGov-Insight
  site: 'https://dreamheart09.github.io'
  base: '/'
  trailingSlash: false

metadata:
  title:
    default: 'AIGov-Insight - 全球领先的AI自主智能体全链路可观测平台'
    template: '%s — AIGov-Insight | 恒安嘉新'
  description: 'Eversec AIGov-Insight 专为 LLM/Agent/MCP/RAG/OpenClaw 打造，让 AI 的每一次"思考"与"行动"全程透明、可溯、可控。'

i18n:
  language: zh
  textDirection: ltr

apps:
  blog:
    isEnabled: true
    postsPerPage: 6

ui:
  theme: 'system' # system | light | dark | light:only | dark:only
```

<br>

### 本地开发

```shell
# 1. 克隆仓库
git clone https://github.com/Eversec-ai/AIGov-Insight-Web.git
cd AIGov-Insight-Web

# 2. 安装依赖
npm install

# 3. 启动开发服务器
npm run dev

# 4. 访问 http://localhost:4321
```

<br>

### Docker 部署

本项目提供 [`build-docker.sh`](./build-docker.sh) 脚本，用于构建离线部署包。

#### 构建镜像

```shell
# 默认根路径部署，版本号为 v0.4.0
./build-docker.sh

# 自定义版本号（支持 0.4.1 或 v0.4.1）
./build-docker.sh 0.4.1

# 自定义基础路径部署
ASTRO_BASE=/your-path/ ./build-docker.sh
```

构建完成后，会在 `./dist-docker/` 目录下生成以下文件：

| 文件 | 说明 |
|------|------|
| `aigov-insight-page.tar.gz` | Docker 镜像压缩包 |
| `aigov-insight-page.tar.gz.sha256` | SHA256 校验文件 |
| `docker-compose.yml` | Docker Compose 配置文件 |
| `README.md` | 离线部署说明 |

#### 离线部署步骤

```shell
# 1. 将以下文件复制到目标服务器
#    • aigov-insight-page.tar.gz
#    • aigov-insight-page.tar.gz.sha256
#    • docker-compose.yml
#    • README.md

# 2. 校验文件完整性
sha256sum -c aigov-insight-page.tar.gz.sha256

# 3. 加载镜像
docker load -i aigov-insight-page.tar.gz

# 4. 启动服务（二选一）

# 方式 A：docker run（推荐）
docker run -d -p 8080:8080 --name aigov-insight-page aigov-insight-page:v0.4.0

# 方式 B：docker compose
docker compose up -d

# 5. 访问
# http://localhost:8080/
```

#### 常用运维命令

```shell
# 查看容器状态
docker ps

# 查看容器日志
docker logs aigov-insight-page

# 停止 / 启动 / 删除容器
docker stop aigov-insight-page
docker start aigov-insight-page
docker rm -f aigov-insight-page

# 删除镜像
docker rmi aigov-insight-page:v0.4.0
```

#### 修改端口

```shell
# docker run 方式，将宿主机 9000 端口映射到容器 8080
docker run -d -p 9000:8080 --name aigov-insight-page aigov-insight-page:v0.3.0

# docker compose 方式，编辑 docker-compose.yml 中的 ports 配置
# ports:
#   - 9000:8080
```

<br>

## 开源项目

AIGov-Insight 采用前后端/探针分离的开源策略：

| 项目 | 说明 | 仓库 |
|------|------|------|
| **AIGov-Insight Web** | 可视化分析层，本仓库 | [Eversec-ai/AIGov-Insight-Web](https://github.com/Eversec-ai/AIGov-Insight-Web) |
| **AIGov-Insight Agent** | 智能数据采集探针 | [Eversec-ai/AIGov-Insight-Agent](https://github.com/Eversec-ai/AIGov-Insight-Agent) |

欢迎提交 Issue 和 Pull Request，一起共建 AI 安全可观测生态。

<br>

## 常见问题

**Q：AIGov-Insight 与传统安全工具有什么区别？**

A：传统 WAF 和防火墙基于规则、特征码、IP 和端口工作，难以理解自然语言指令背后的恶意意图。AIGov-Insight 专为 AI 系统设计，能够深度解析 AI 对话内容、工具调用、系统命令执行等底层行为，实现语义层面的安全监控。

**Q：部署 AIGov-Insight 需要修改现有代码吗？**

A：不需要。AIGov-Insight Agent 基于 eBPF 技术运行在操作系统内核态，通过挂载内核的 eBPF 钩子进行旁路采集，零业务代码侵入。

**Q：支持哪些 AI 框架？**

A：目前支持主流的大语言模型框架（Ollama、vLLM）、智能体框架（Dify、OpenClaw）以及 MCP 协议。我们持续更新解析器以支持更多框架。

**Q：OpenClaw 场景下能监控到什么？**

A：当 OpenClaw 执行系统命令或访问文件时，AIGov-Insight 能够捕获完整的命令行参数、文件路径、执行结果，并将其与用户的原始 Prompt 关联，清晰呈现完整链路。

<br>

## 关于恒安嘉新

**恒安嘉新（Eversec）** 致力于为企业级客户提供专业的 AI 安全解决方案。AIGov-Insight 是我们面向 LLM / Agent / MCP / RAG / OpenClaw 等新一代 AI 系统的全链路可观测与治理平台。

如需产品演示或试用申请，请通过页面底部联系方式与我们取得联系。

<br>

## 许可证

- 本网站页面基于 **AstroWind** 模板构建，AstroWind 采用 MIT 许可证 —— 详见 [LICENSE](./LICENSE.md) 文件。
- **AIGov-Insight** 产品（包括但不限于 Agent 探针、防护引擎、核心算法与商业功能）为恒安嘉新所有，不属于 MIT 开源范围，未经授权不得用于商业目的。

© 2026 恒安嘉新 Eversec. All rights reserved.
