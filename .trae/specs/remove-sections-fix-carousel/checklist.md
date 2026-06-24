# Checklist

## 章节移除
- [x] "企业正在面临 AI Agent 的黑箱困境" section 已从 edge.astro 中完全移除
- [x] "AIGov Insight Edge：AI Agent 的监控摄像头" section 已从 edge.astro 中完全移除
- [x] 移除后页面结构连贯，无空白断裂

## 截图套壳移除
- [x] AI Copilot carousel 所有 slide 截图无 macOS 标题栏
- [x] AI-Native carousel 所有 slide 截图无 macOS 标题栏
- [x] GUI 章节 carousel 所有 slide 截图无 macOS 标题栏
- [x] 移除套壳后截图有合适的圆角和阴影样式

## 轮播交互
- [x] carousel 左右箭头在切换 slide 时位置不跳动
- [x] carousel 底部指示点功能正常
- [x] 键盘 ←/→ 切换功能正常

## 文字可读性
- [x] 浅色模式下 AI Copilot（edge-section-dark）章节标题文字清晰可读
- [x] 浅色模式下 AI Copilot 章节副标题文字清晰可读
- [x] 暗色模式下该章节文字仍然正常

## 质量检查
- [x] `npm run check`（astro check + eslint + prettier）通过
- [ ] 本地 dev 预览页面正常渲染
