# Tasks

- [x] Task 1: 修复 close/open 竞态条件
  - [x] SubTask 1.1: 在 `initLightbox()` 作用域中添加 `closeTimer` 变量
  - [x] SubTask 1.2: `open()` 中在设置 `src` 前 `clearTimeout(closeTimer)` 取消 pending 的清空操作
  - [x] SubTask 1.3: `close()` 中用 `closeTimer = setTimeout(...)` 替换裸 `setTimeout`

- [x] Task 2: 修复 lightbox 图片加载就绪问题
  - [x] SubTask 2.1: 修改 `open()` 函数 — 先隐藏图片（opacity:0），创建 `new Image()` 预加载
  - [x] SubTask 2.2: 预加载图片 `onload` 后再设置 `lbImg.src` 并显示
  - [x] SubTask 2.3: 添加 lightbox 图片加载中的占位样式（spinner 或淡化背景）

- [x] Task 3: 验证
  - [x] SubTask 3.1: `npm run check` 通过
  - [x] SubTask 3.2: 手动测试快速关闭/打开、点击未加载图片等场景
