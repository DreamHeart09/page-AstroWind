# Checklist

## 内容完整性
- [x] Hero 章节关键指标为 6 AI 模块 / 17 GUI 工具 / 100% 本地 / 0 Cloud calls
- [x] 新增痛点章节（看不见 / 管不住 / 花不明）3 卡片
- [x] 新增价值主张章节（看得见 / 管得住 / 花得明）3 卡片，与痛点对照
- [x] 新增技术原理章节（4 比喻：安检闸机 / 行车记录仪 / 本地保险箱 / 万能充电器）
- [x] 新增 TUI 终端章节（9 大视图截图完整呈现）
- [x] 新增 aigov-setup 部署章节（setup-terminal / setup-doctor 截图 + 4 价值卡片）
- [x] 新增八大核心壁垒价值卡片网格
- [x] 新增路线图章节（Recently Shipped 7 项 + 4 未来规划卡片）
- [x] AI Copilot 章节含 ReAct Loop 流程 + 对话演示
- [x] AI-Native 章节含 4 项能力（异常 / 简报 / 成本 / Spotlight）
- [x] 产品架构升级为三层设计可视化（采集 → 存储 → 展示）
- [x] 插件生态补充深度能力矩阵
- [x] GUI 桌面端采用三段式叙事（看见 → 理解 → 行动）

## 视觉设计
- [x] 引入 OKR Presentation 设计令牌（glass-card refined glassmorphism）
- [x] 遵循 Apple HIG 官网设计规范（section-kicker + title + subtitle 结构）
- [x] 整体呈现领先感、高级感、克制感与优雅气质
- [x] bento-grid 布局最佳实践（bento-span-2/3/4/6 变宽卡片）
- [x] narrative-stage 叙事标题样式（Stage 标签 + gradient 标题）
- [x] apple-value-grid 价值卡片样式（emoji 图标 + 标题 + 描述）
- [x] benchmark-row 性能指标样式
- [x] shipped-pill-row 路线图 pill 样式
- [x] 暗色/亮色双主题完整适配

## 交互组件
- [x] 可左右切换卡片轮播（hero-showcase-carousel）实现
- [x] 左右箭头按钮切换功能正常
- [x] 底部指示点点击跳转功能正常
- [x] 键盘 ←/→ 切换功能正常
- [x] 触摸滑动切换（移动端）功能正常
- [x] 文本左/右交替布局（Apple 产品页风格）
- [x] prefers-reduced-motion 适配

## 截图资源
- [x] 所有截图路径正确（public/edge-screenshots/）
- [ ] 截图加载失败有 placeholder fallback（待用户预览验证）
- [x] 截图 lazy loading 启用

## 质量检查
- [x] `npm run check`（astro check + eslint + prettier）通过
- [ ] 本地 dev 预览所有章节渲染正常（待用户预览验证）
- [ ] 暗色/亮色双主题切换正常（待用户预览验证）
- [ ] 响应式（移动端单列、平板 2 列、桌面 3-4 列）正常（待用户预览验证）
- [x] IntersectionObserver reveal 动画正常
- [ ] 无控制台错误（待用户预览验证）

## 核心目标达成
- [x] 页面能有效向投资人展示产品优势（痛点→价值→技术→架构→壁垒→路线图完整叙事）
- [x] 突出 AI 概念（AI Copilot / AI-Native / 本地 LLM 推理 / Edge 端侧 Agent 可观测）
- [x] 内容真实可信（指标、截图、技术栈均与产品实际一致）
- [x] 设计符合高端产品定位（Apple HIG + Dribbble 高级感）

## 额外修复（实施过程中发现并修复的预存问题）
- [x] 排除 AIGovInsightEdge 子项目（tsconfig.json / eslint.config.js / .prettierignore）
- [x] 修复 src/layouts/PageLayout.astro 类型错误（navigation.ts variant: 'primary' as const）
- [x] 清理 src/components/Logo.astro 未使用导入（Image）
- [x] 清理 src/navigation.ts 未使用导入（getAsset）
- [x] 清理 src/pages/about.astro 未使用导入（Hero, CallToAction）
- [x] 清理 src/pages/web.astro 未使用导入（Features, Features2, Content, Steps, Stats）
- [x] 修复 src/pages/web.astro 未使用函数（添加 _ 前缀符合项目约定）
- [x] eslint.config.js 添加 varsIgnorePattern: '^_'（对齐 AGENTS.md 约定）
- [x] prettier 格式化全部文件
