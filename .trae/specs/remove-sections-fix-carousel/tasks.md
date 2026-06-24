# Tasks

- [x] Task 1: 移除"黑箱困境"和"监控摄像头"两个章节
  - [x] SubTask 1.1: 删除 edge.astro 中 L1394-L1428 "黑箱困境" section（含注释）
  - [x] SubTask 1.2: 删除 edge.astro 中 L1430-L1464 "监控摄像头" section（含注释）

- [x] Task 2: 移除所有 carousel 截图的 macOS 标题栏套壳
  - [x] SubTask 2.1: 移除 AI Copilot carousel（3 个 slide）中的 mac-window / mac-titlebar 包装，改为直接 `<img>` + 圆角阴影
  - [x] SubTask 2.2: 移除 AI-Native carousel（4 个 slide）中的 mac-window / mac-titlebar 包装
  - [x] SubTask 2.3: 移除 GUI 章节 carousel（3 个 slide）中的 mac-window / mac-titlebar 包装
  - [x] SubTask 2.4: 清理/保留 mac-window / mac-titlebar CSS（如果仍被其他地方使用则保留，否则移除）

- [x] Task 3: 修复 carousel 左右箭头位置跳动问题
  - [x] SubTask 3.1: 为 carousel-track 设置 min-height 或统一 slide 高度，确保切换时容器高度不变
  - [x] SubTask 3.2: 确保箭头按钮定位相对于 carousel 容器而非 slide 内容

- [x] Task 4: 修复 AI Copilot 暗色章节在浅色模式下的文字颜色
  - [x] SubTask 4.1: 为 `.edge-section-dark` 内的文字元素添加浅色模式下固定浅色文字样式（section-title / section-subtitle / section-kicker）

- [x] Task 5: 验证
  - [x] SubTask 5.1: 运行 `npm run check` 确保无报错
  - [ ] SubTask 5.2: 本地 dev 预览验证所有修改效果

# Task Dependencies
- Task 3 依赖 Task 2（移除套壳后才能确定统一高度方案）
- Task 5 依赖 Task 1-4 完成
- Task 1、2、4 可并行
