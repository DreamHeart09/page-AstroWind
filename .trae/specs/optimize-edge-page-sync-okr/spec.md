# EDGE 页面全面优化（同步 OKR Presentation）Spec

## Why

当前 `src/pages/edge.astro` 仅覆盖了 OKR Presentation 的部分章节（Hero / 核心能力 / AI Copilot / GUI 截图 / 性能 / 插件 / 架构 / Quick Start），缺失了**痛点陈述、价值主张、技术原理、TUI 终端、aigov-setup 部署、八大核心壁垒、路线图**等关键章节。这些章节正是向投资人和客户建立产品信任、展示 AI 技术实力的核心叙事。同时现有视觉虽已较精致，但尚未达到 Apple HIG 官网产品介绍级别的"克制感 + 高级感"，且缺少用户要求的"可左右切换卡片"交互（Apple 产品页常见的横向轮播展示）。

本次优化将完整同步 `AIGovInsightEdge/docs/okr-presentation.html` 的最新内容与设计语言，使 EDGE 页面成为面向投资人/客户的高端产品展示页。

## What Changes

- **新增章节**：痛点（黑箱困境）、价值主张（监控摄像头）、技术原理（四个比喻）、TUI 终端（9 大视图）、aigov-setup 部署、八大核心壁垒、路线图（Recently Shipped + 未来规划）
- **增强章节**：AI Copilot 深度展示（ReAct Loop + 对话演示 + hero-showcase 交替布局）、AI-Native 能力（异常/简报/成本/Spotlight 轮播）、产品架构（三层设计图）、插件生态（深度能力矩阵）、GUI 桌面端（三段式叙事 看见→理解→行动 + 11 屏 bento）、性能与优势（3 指标 + 8 壁垒）
- **新增交互组件**：可左右切换的卡片轮播（`hero-showcase-carousel`），支持左右箭头/指示点/键盘切换，达到 Apple 官网产品介绍视觉效果
- **视觉升级**：引入 OKR Presentation 的设计令牌（glass-card refined glassmorphism、narrative-stage 叙事标题、apple-value-grid 价值卡片、benchmark-row、shipped-pill-row），统一 Dribbble 高级感 + Apple HIG 克制优雅气质
- **截图资源**：复用 `public/edge-screenshots/` 已有 44 张截图，按章节组织展示
- **保留**：现有 IntersectionObserver reveal 动画、暗色模式、响应式布局基础

## Impact

- Affected specs: EDGE 产品展示页（marketing）
- Affected code:
  - `src/pages/edge.astro`（主文件，全面重写章节结构）
  - 截图资源已就位于 `public/edge-screenshots/`，无需新增
- 不影响其他页面、构建配置、导航（`src/navigation.ts` 中 EDGE 链接不变）

## ADDED Requirements

### Requirement: 痛点陈述章节
页面 SHALL 在 Hero 之后新增"企业正在面临 AI Agent 的黑箱困境"章节，以三卡片 bento 呈现"看不见 / 管不住 / 花不明"三大痛点。

#### Scenario: 投资人浏览痛点
- **WHEN** 投资人滚动至痛点章节
- **THEN** 看到 3 张 glass-card，红色警示图标 + 痛点标题 + 描述（含 highlight 强调），建立问题共鸣

### Requirement: 价值主张章节
页面 SHALL 紧接痛点章节呈现"AIGov Insight Edge：AI Agent 的监控摄像头"价值主张，以三卡片呈现"看得见 / 管得住 / 花得明"，与痛点形成对照。

#### Scenario: 价值对照
- **WHEN** 用户从痛点滚动至价值章节
- **THEN** 看到 3 张绿色正向 glass-card，标题与痛点一一对应，描述含 highlight 强调核心能力

### Requirement: 技术原理章节
页面 SHALL 新增"技术原理：用最简单的方式理解"章节，以 4 张 apple-value-card 呈现生活化比喻：安检闸机(Hook) / 行车记录仪(数据采集) / 本地保险箱(SQLite) / 万能充电器(多平台适配)。

#### Scenario: 通俗理解
- **WHEN** 非技术背景投资人浏览技术原理
- **THEN** 通过 emoji 图标 + 比喻标题 + 技术指标描述，轻松理解四大核心概念

### Requirement: TUI 终端章节
页面 SHALL 新增"TUI 终端：9 大视图，全屏掌控"章节，包含 narrative-stage 叙事标题 + 2 个 hero-showcase（Hero 首页 / Dashboard）+ bento-grid 展示 9 大视图截图（LLM 调用 / 工具调用 / 会话 / 事件 / 日志 / 视图模式 / 详情 / 过滤 / 插件管理）。

#### Scenario: TUI 全貌
- **WHEN** 用户浏览 TUI 章节
- **THEN** 看到 9 张终端截图 + 描述，理解终端原生体验与键盘驱动交互

### Requirement: aigov-setup 部署章节
页面 SHALL 新增"aigov-setup — 5 分钟完成部署"章节，展示 setup-terminal.png / setup-doctor.png 截图 + 4 张价值卡片（7 命令 / 4 组件 / 自动检测 / 跨平台）。

#### Scenario: 部署信心
- **WHEN** 客户浏览部署章节
- **THEN** 看到一键安装截图与价值卡片，建立"5 分钟即可上手"信心

### Requirement: 八大核心壁垒
页面 SHALL 在性能章节新增"八大核心壁垒"价值卡片网格，呈现：全链路可观测 / 三平台+GUI已发布 / 本地数据安全 / 成本引擎 / AI Copilot / AI-Native 洞察 / 三端协同 / 持续演进。

#### Scenario: 竞争优势展示
- **WHEN** 投资人浏览核心壁垒
- **THEN** 看到 8 张价值卡片，直观感受不可复制的竞争优势

### Requirement: 路线图章节
页面 SHALL 新增"路线图：AI 时代的产品演进"章节，顶部为 Recently Shipped pill 行（AI Copilot / AI-Native / 7-step Onboarding 等 7 项），下方为 4 张未来规划 bento 卡片（更多 Agent 适配 / 团队协作 / 告警通知 / 更多能力）。

#### Scenario: 演进信心
- **WHEN** 投资人浏览路线图
- **THEN** 看到已交付成果与未来规划，确认产品持续演进能力

### Requirement: 可左右切换卡片轮播
页面 SHALL 实现 `hero-showcase-carousel` 交互组件，用于 AI Copilot / AI-Native / GUI 桌面端等深度展示章节，支持：
- 左右箭头按钮切换
- 底部指示点点击跳转
- 键盘 ←/→ 切换
- 触摸滑动切换（移动端）
- 自动适配文本左/右交替布局（Apple 产品页风格）

#### Scenario: 卡片切换
- **WHEN** 用户点击右箭头或指示点
- **THEN** 当前卡片平滑滑出，下一卡片滑入，文本与图片位置交替（左/右），达到 Apple 官网产品介绍视觉效果

### Requirement: 三段式叙事结构
GUI 桌面端章节 SHALL 采用"看见 → 理解 → 行动"三段式 narrative-stage 叙事，每段含 stage-label + 标题 + 描述，配合 hero-showcase 与 bento-grid。

#### Scenario: 叙事引导
- **WHEN** 用户浏览 GUI 章节
- **THEN** 通过 Stage 01/02/03 标签引导，从"看见数据"到"理解 AI"到"行动操控"逐步深入

## MODIFIED Requirements

### Requirement: Hero 章节
Hero 保留现有 AI-Native 定位，更新关键指标为"6 AI 模块 / 17 GUI 工具 / 100% 本地 / 0 Cloud calls"（与 OKR Presentation 对齐），并强化"AI Agent 的监控摄像头"定位语。

### Requirement: 核心能力 Bento Grid
保留 4 卡 bento（AI Copilot 大卡 / Local First / AI-Native / Tech Stack），更新文案与 OKR Presentation 对齐（如 Tech Stack 增加 llama.cpp / TanStack Virtual / Framer Motion）。

### Requirement: AI Copilot 深度展示
增强为 hero-showcase-carousel 形式，包含 ReAct Loop 流程图 + 对话演示 + UX 控制项，采用交替左右布局。

### Requirement: 产品架构
将 ASCII 架构图升级为三层设计可视化（采集层 → 存储层 → 展示层），含节点卡片与向下箭头连接。

### Requirement: 插件生态
保留 3 插件卡片，补充深度能力矩阵（事件类型数 / Hook 模块数 / 工具数等）。

### Requirement: GUI 桌面端
重构为三段式叙事 + hero-showcase-carousel（Home / Dashboard / Timeline）+ 11 屏 bento-grid。

### Requirement: 性能与优势
保留 3 性能指标，新增八大核心壁垒价值卡片网格。

## REMOVED Requirements

### Requirement: 简单 CTA 章节末尾
**Reason**: 合并至 Quick Start 章节，避免重复
**Migration**: Quick Start 章节末尾保留下载 CTA，移除独立 CTA section
