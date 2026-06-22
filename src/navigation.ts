import { getPermalink, getBlogPermalink, getAsset } from './utils/permalinks';

export const headerData = {
  links: [
    {
      text: '产品',
      links: [
        {
          text: 'WEB / Agent 版本',
          href: getPermalink('/web'),
        },
        {
          text: 'Edge 桌面版 (macOS)',
          href: getPermalink('/edge'),
          isNew: true,
        },
        {
          text: 'OpenClaw 安全引擎',
          href: getPermalink('/#openclaw-brief'),
        },
      ],
    },
    {
      text: '产品能力',
      links: [
        {
          text: 'AI Copilot',
          href: getPermalink('/edge'),
        },
        {
          text: 'AI-Native 洞察',
          href: getPermalink('/edge'),
        },
        {
          text: 'GUI 桌面端 (11 页面)',
          href: getPermalink('/edge'),
        },
        {
          text: '终端 TUI (9 视图)',
          href: getPermalink('/edge'),
        },
        {
          text: 'eBPF 深度监测',
          href: getPermalink('/web#advantages'),
        },
        {
          text: 'OpenClaw 安全防护',
          href: getPermalink('/#openclaw-brief'),
        },
      ],
    },
    {
      text: '解决方案',
      links: [
        {
          text: '生产环境 AI 监控',
          href: getPermalink('/web'),
        },
        {
          text: '开发者本地可观测',
          href: getPermalink('/edge'),
        },
      ],
    },
    {
      text: '开源项目',
      links: [
        {
          text: '概览',
          href: getPermalink('/#opensource'),
        },
        {
          text: 'AIGov-Insight Web',
          href: 'https://github.com/Eversec-ai/AIGov-Insight-Web',
        },
        {
          text: 'AIGov-Insight Agent',
          href: 'https://github.com/Eversec-ai/AIGov-Insight-Agent',
        },
      ],
    },
    {
      text: '恒安嘉新',
      links: [
        {
          text: '关于我们',
          href: getPermalink('/about'),
        },
        {
          text: '新闻动态',
          href: getBlogPermalink(),
        },
      ],
    },
  ],
  actions: [
    { text: 'GitHub', href: 'https://github.com/Eversec-ai/AIGov-Insight-Web', icon: 'tabler:brand-github' },
    { text: '预约演示', href: getPermalink('/#contact'), icon: 'tabler:mail', variant: 'primary' },
  ],
};

export const footerData = {
  links: [
    {
      title: '产品',
      links: [
        { text: 'WEB / Agent 版本', href: getPermalink('/web') },
        { text: 'Edge 桌面版 (macOS)', href: getPermalink('/edge') },
        { text: 'OpenClaw 安全引擎', href: getPermalink('/#openclaw-brief') },
      ],
    },
    {
      title: '开源项目',
      links: [
        { text: 'AIGov-Insight Web', href: 'https://github.com/Eversec-ai/AIGov-Insight-Web' },
        { text: 'AIGov-Insight Agent', href: 'https://github.com/Eversec-ai/AIGov-Insight-Agent' },
      ],
    },
    {
      title: '公司',
      links: [
        { text: '关于恒安嘉新', href: getPermalink('/about') },
        { text: '新闻动态', href: getBlogPermalink() },
        { text: '联系我们', href: getPermalink('/#contact') },
      ],
    },
  ],
  secondaryLinks: [
    { text: '全球领先的AI自主智能体全链路可观测平台', href: '#' },
  ],
  socialLinks: [
    { ariaLabel: 'GitHub', icon: 'tabler:brand-github', href: 'https://github.com/Eversec-ai/AIGov-Insight-Web' },
    { ariaLabel: '微信公众号', icon: 'tabler:brand-wechat', href: 'https://mp.weixin.qq.com/s/FzRoOqZ3iMfT1QDwEQ7_qg?mpshare=1&scene=1&srcid=0309KjYhEGtvLBUldOf5dW20&sharer_shareinfo=c5df1490ab1717d7bf08776535c5736f&sharer_shareinfo_first=c5df1490ab1717d7bf08776535c5736f&version=5.0.6.91166&platform=mac#rd' },
  ],
  footNote: `
    © 2026 恒安嘉新 Eversec. All rights reserved.
  `,
};
