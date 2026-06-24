import { getPermalink, getBlogPermalink } from './utils/permalinks';

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
          text: 'Edge 桌面版',
          href: getPermalink('/edge'),
          isNew: true,
        },
      ],
    },
    {
      text: '能力',
      links: [
        {
          text: 'WEB/Agent: eBPF 深度监测',
          href: getPermalink('/web#advantages'),
        },
        {
          text: 'WEB/Agent: 全链路可观测',
          href: getPermalink('/web#features'),
        },
        {
          text: 'WEB/Agent: OpenClaw 防护',
          href: getPermalink('/web#openclaw'),
        },
        {
          text: 'Edge: AI Copilot',
          href: getPermalink('/edge#copilot'),
        },
        {
          text: 'Edge: AI-Native 洞察',
          href: getPermalink('/edge#ai-native'),
        },
        {
          text: 'Edge: GUI + TUI 双模',
          href: getPermalink('/edge#desktop'),
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
    { text: '预约演示', href: getPermalink('/#contact'), icon: 'tabler:mail', variant: 'primary' as const },
  ],
};

export const footerData = {
  links: [
    {
      title: '产品',
      links: [
        { text: 'WEB / Agent 版本', href: getPermalink('/web') },
        { text: 'Edge 桌面版', href: getPermalink('/edge') },
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
  secondaryLinks: [{ text: '全球领先的AI自主智能体全链路可观测平台', href: '#' }],
  socialLinks: [
    { ariaLabel: 'GitHub', icon: 'tabler:brand-github', href: 'https://github.com/Eversec-ai/AIGov-Insight-Web' },
    {
      ariaLabel: '微信公众号',
      icon: 'tabler:brand-wechat',
      href: 'https://mp.weixin.qq.com/s/FzRoOqZ3iMfT1QDwEQ7_qg?mpshare=1&scene=1&srcid=0309KjYhEGtvLBUldOf5dW20&sharer_shareinfo=c5df1490ab1717d7bf08776535c5736f&sharer_shareinfo_first=c5df1490ab1717d7bf08776535c5736f&version=5.0.6.91166&platform=mac#rd',
    },
  ],
  footNote: `
    © 2026 恒安嘉新 Eversec. All rights reserved.
  `,
};
