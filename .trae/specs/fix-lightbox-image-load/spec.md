# 修复 Lightbox 弹窗图片偶尔显示不出来

## Why
Edge 页面的 Lightbox 弹窗中图片有时显示为裂开的图标（broken image icon），体验不稳定。根本原因有两个：(1) `close()` 中的 `setTimeout` 清空 `src` 与快速重新 `open()` 之间存在竞态条件；(2) 卡片图片使用 `loading="lazy"`，用户快速点击时尚未加载完成，lightbox 直接复用 `img.src` 时图片资源未就绪。

## What Changes
- 修复 `close()` 中 `setTimeout` 的竞态问题：`open()` 时取消 pending 的 close timeout
- 为 lightbox 图片添加加载状态处理：等待图片 `load` 事件后再显示，添加加载占位/过渡样式
- 移除卡片图片上的 `loading="lazy"` 属性（或将 lightbox 中的图片去掉 lazy），确保点击时图片可立即获取

## Impact
- Affected code: `src/pages/edge.astro`（唯一修改文件）
  - JS: `initLightbox()` 函数中的 `open()` / `close()` 逻辑
  - CSS: `.edge-lightbox-image img` 相关样式

## ADDED Requirements
### Requirement: 竞态安全
`open()` SHALL 在设置新 `src` 前取消任何 pending 的 close timeout，防止 `src` 被意外清空。

#### Scenario: 快速关闭再打开
- **WHEN** 用户关闭 lightbox 后 500ms 内再次点击另一张卡片
- **THEN** lightbox 正常显示新图片，不会出现空白或裂图

### Requirement: 图片加载就绪后再显示
Lightbox SHALL 等待目标图片加载完成后再显示图片区域，避免 broken image icon。

#### Scenario: 懒加载图片尚未缓存
- **WHEN** 用户点击一张 lazy-loading 尚未完成的图片
- **THEN** lightbox 先显示加载占位状态，图片加载完成后平滑过渡显示

## MODIFIED Requirements
（无已有 requirement 被修改，此为 bug 修复）

## REMOVED Requirements
（无）
