# 图片展开展示（Lightbox）

## Why
轮播卡片和 BentoGrid 中的截图当前无法放大查看细节。需要增加 Apple 官网风格的点击展开能力，支持毛玻璃背景、精致缩放动画、Dribbble 顶级美学。

## What Changes
- 新增全局 Lightbox 模态层（HTML + CSS + JS）
- 所有 `.carousel-screenshot` 和 `.bento-screenshot img` 点击后弹出放大展示
- Apple 风格：毛玻璃 backdrop、scale + fade 动画、圆角卡片、ESC/点击背景关闭

## Impact
- Affected code: `src/pages/edge.astro`（唯一修改文件）

## Requirements
### Requirement: Lightbox 模态层
系统 SHALL 提供一个全屏 lightbox，点击截图后以动画方式展开显示原图。

#### Scenario: 点击展开
- **WHEN** 用户点击任意轮播截图或 BentoGrid 截图
- **THEN** 截图以 scale 动画展开到屏幕中央，背景出现毛玻璃遮罩

#### Scenario: 关闭
- **WHEN** 用户点击遮罩区域、按 ESC 键、或点击关闭按钮
- **THEN** lightbox 以反向动画关闭，恢复原状
