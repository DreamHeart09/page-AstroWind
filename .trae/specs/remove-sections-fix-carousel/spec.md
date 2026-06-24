# Edge 页面优化 — 移除章节 + 轮播修复 + 暗色章节文字修复

## Why
edge.astro 页面中两个章节（黑箱困境、监控摄像头）需要移除；轮播组件因截图高度不一致导致左右箭头按钮位置跳动；所有轮播截图的 macOS 标题栏套壳需要移除；AI Copilot 暗色章节在浅色模式下文字不可见。

## What Changes
- **移除**"企业正在面临 AI Agent 的黑箱困境"整个 section（约 L1394-L1428）
- **移除**"AIGov Insight Edge：AI Agent 的监控摄像头"整个 section（约 L1430-L1464）
- **移除**所有 carousel 中截图的 mac-window / mac-titlebar 套壳，直接展示原图，并为图片添加圆角和阴影
- **修复** carousel 左右箭头位置跳动问题：统一 slide 高度，使箭头始终居中于容器
- **修复** `.edge-section-dark` 在浅色模式下的文字颜色，确保 section-title / section-subtitle 等文字在黑色背景上清晰可读

## Impact
- Affected specs: optimize-edge-page-sync-okr（已全部完成，无冲突）
- Affected code: `src/pages/edge.astro`（唯一修改文件）

## ADDED Requirements

### Requirement: 移除两个章节
系统 SHALL 移除 edge.astro 中"黑箱困境"和"监控摄像头"两个完整 `<section>` 区块。

#### Scenario: 页面结构
- **WHEN** 用户访问 edge 页面
- **THEN** 页面中不再出现这两个章节的任何内容

### Requirement: 轮播截图无套壳
系统 SHALL 移除所有 carousel 中截图的 mac-window / mac-titlebar 包装，直接使用 `<img>` 并添加合适的圆角与阴影。

#### Scenario: 截图展示
- **WHEN** 用户查看轮播截图
- **THEN** 截图直接显示，无 macOS 红绿灯标题栏

### Requirement: 轮播高度一致
系统 SHALL 确保同一 carousel 内所有 slide 高度一致，避免箭头按钮随 slide 切换而跳动。

#### Scenario: 左右切换
- **WHEN** 用户点击 carousel 左右箭头切换 slide
- **THEN** 箭头按钮位置保持不变，不发生上下跳动

### Requirement: 暗色章节文字可读
系统 SHALL 确保 `.edge-section-dark` 章节在浅色模式下文字颜色为浅色（如白色或浅灰色），在黑色背景上清晰可读。

#### Scenario: 浅色模式查看 AI Copilot 章节
- **WHEN** 用户在浅色模式下查看 AI Copilot 章节
- **THEN** 章节标题、副标题等文字清晰可读，无黑色文字在黑色背景上的情况
