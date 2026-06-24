# Tasks

- [x] Task 1: 搭建设计令牌与基础样式系统
  - [x] SubTask 1.1: 在 edge.astro `<style>` 中引入 OKR Presentation 设计令牌（glass-card refined glassmorphism、narrative-stage、apple-value-grid、benchmark-row、shipped-pill-row、hero-showcase 样式）
  - [x] SubTask 1.2: 保留并扩展现有动画 keyframes（float/glow/gradient/fade-in-up），新增 carousel slide 过渡动画
  - [x] SubTask 1.3: 确保暗色/亮色模式双主题适配（:global(.dark) 与默认）

- [x] Task 2: 重构 Hero 章节并对齐 OKR 指标
  - [x] SubTask 2.1: 更新关键指标为 6 AI 模块 / 17 GUI 工具 / 100% 本地 / 0 Cloud calls
  - [x] SubTask 2.2: 强化"AI Agent 的监控摄像头"定位语与 gradient 标题
  - [x] SubTask 2.3: 保留下载/GitHub 双按钮与 glow-orb 背景

- [x] Task 3: 新增痛点章节（黑箱困境）
  - [x] SubTask 3.1: 创建 section-kicker "Problem" + 标题"企业正在面临 AI Agent 的黑箱困境"
  - [x] SubTask 3.2: 3 张 glass-card（红色图标）：看不见 / 管不住 / 花不明，含 highlight 强调

- [x] Task 4: 新增价值主张章节（监控摄像头）
  - [x] SubTask 4.1: 创建 section-kicker "Value Proposition" + 标题"AIGov Insight Edge：AI Agent 的监控摄像头"
  - [x] SubTask 4.2: 3 张 glass-card（绿色图标）：看得见 / 管得住 / 花得明，与痛点对照

- [x] Task 5: 优化核心能力 Bento Grid
  - [x] SubTask 5.1: 保留 4 卡 bento（AI Copilot 大卡 / Local First / AI-Native / Tech Stack）
  - [x] SubTask 5.2: 更新 Tech Stack 文案（llama.cpp / TanStack Virtual / Framer Motion / Electron 37 / React 19 / Vite 6 / Tailwind 4 / Zustand 5 / SQLite）

- [x] Task 6: 开发可左右切换卡片轮播组件
  - [x] SubTask 6.1: 实现 hero-showcase-carousel HTML 结构（track + slides + 箭头 + 指示点）
  - [x] SubTask 6.2: 实现 JS 交互（左右切换 / 指示点跳转 / 键盘 ←/→ / 触摸滑动 / 自动交替左右布局）
  - [x] SubTask 6.3: 支持 prefers-reduced-motion 与响应式（移动端单列）

- [x] Task 7: 增强 AI Copilot 深度展示章节
  - [x] SubTask 7.1: 使用 hero-showcase-carousel 呈现 ReAct Loop 流程 + 对话演示 + UX 控制项
  - [x] SubTask 7.2: 保留暗色背景与 glow 效果，文案对齐 OKR（15 GUI 工具 / 屏幕感知 / AbortController / Streaming）

- [x] Task 8: 新增 AI-Native 能力轮播章节
  - [x] SubTask 8.1: hero-showcase-carousel 展示 4 项 AI 能力（异常检测 / 每日简报 / 成本模拟 / Spotlight），配截图 gui-ai-anomaly/daily-brief/cost-simulator/spotlight.png
  - [x] SubTask 8.2: narrative-stage 叙事标题"让数据自己说话"

- [x] Task 9: 新增技术原理章节
  - [x] SubTask 9.1: narrative-stage + 4 张 apple-value-card（安检闸机🚇 / 行车记录仪📹 / 本地保险箱🔒 / 万能充电器🔌）
  - [x] SubTask 9.2: 每卡含比喻标题 + 技术指标描述

- [x] Task 10: 升级产品架构章节
  - [x] SubTask 10.1: 将 ASCII 图替换为三层设计可视化（采集层 OpenClaw/Hermes/Claude Code → 存储层 SQLite → 展示层 GUI/TUI）
  - [x] SubTask 10.2: 节点卡片 + 向下箭头连接，含 layer-dot 色彩区分

- [x] Task 11: 增强插件生态章节
  - [x] SubTask 11.1: 保留 3 插件卡片（OpenClaw / Hermes / Claude Code）
  - [x] SubTask 11.2: 补充深度能力矩阵（事件类型数 / Hook 模块数 / 工具数 / MCP 支持）

- [x] Task 12: 新增 TUI 终端章节
  - [x] SubTask 12.1: narrative-stage + 2 个 hero-showcase（Hero 首页 / Dashboard）
  - [x] SubTask 12.2: bento-grid 展示 9 大视图截图（tui-llm-calls/tool-calls/sessions/events/logs/view-modes/detail/filter/plugins.png）

- [x] Task 13: 重构 GUI 桌面端章节（三段式叙事）
  - [x] SubTask 13.1: Tech Stack Bar + Stat Highlights（6/17/100%/0）
  - [x] SubTask 13.2: Stage 01 看见 — hero-showcase-carousel（Home / Dashboard / Timeline）+ 11 屏 bento-grid
  - [x] SubTask 13.3: Stage 02 理解 + Stage 03 行动 narrative-stage（如 OKR 有对应内容则呈现）

- [x] Task 14: 新增 aigov-setup 部署章节
  - [x] SubTask 14.1: 2 张截图（setup-terminal.png / setup-doctor.png）bento 展示
  - [x] SubTask 14.2: 4 张价值卡片（7 命令 / 4 组件 / 自动检测 / 跨平台）

- [x] Task 15: 增强性能与优势章节
  - [x] SubTask 15.1: 保留 3 性能指标（<1ms / >99.9% / <10ms）benchmark-row
  - [x] SubTask 15.2: 新增八大核心壁垒 apple-value-grid（全链路 / 三平台+GUI / 本地安全 / 成本引擎 / AI Copilot / AI-Native / 三端协同 / 持续演进）

- [x] Task 16: 新增路线图章节
  - [x] SubTask 16.1: Recently Shipped pill 行（7 项已交付）
  - [x] SubTask 16.2: 4 张未来规划 bento 卡片（更多 Agent / 团队协作 / 告警通知 / 更多能力）

- [x] Task 17: 整合 Quick Start 与 CTA
  - [x] SubTask 17.1: 保留 Quick Start 暗色章节（DMG 安装 + TUI 命令）
  - [x] SubTask 17.2: 末尾合并下载 CTA，移除独立 CTA section

- [x] Task 18: 验证与质量检查
  - [x] SubTask 18.1: 运行 `npm run check`（astro check + eslint + prettier）通过
  - [x] SubTask 18.2: 本地 `npm run dev` 预览所有章节渲染正常，暗色/亮色双主题正常
  - [x] SubTask 18.3: 验证轮播交互（箭头/指示点/键盘/触摸）与响应式（移动端单列）
  - [x] SubTask 18.4: 验证所有截图路径正确加载（public/edge-screenshots/）

# Task Dependencies
- Task 6（轮播组件）依赖 Task 1（样式系统）
- Task 7/8/13 依赖 Task 6（轮播组件）
- Task 18 依赖所有前置任务完成
- Task 1-5、9-12、14-17 可相对独立推进（共享样式系统）
