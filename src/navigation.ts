import { getPermalink, getBlogPermalink, getAsset } from './utils/permalinks';

export const headerData = {
  links: [
    {
      text: '产品能力',
      links: [
        {
          text: '核心能力',
          href: getPermalink('/#advantages'),
        },
        {
          text: '全链路可观测',
          href: getPermalink('/#features'),
        },
        {
          text: 'OpenClaw 监管',
          href: getPermalink('/#openclaw'),
        },
        {
          text: 'OpenClaw 智能防护中心',
          href: getPermalink('/#v030'),
          isNew: true,
        },
        {
          text: '双引擎架构',
          href: getPermalink('/#architecture'),
        },
        {
          text: '效率提升',
          href: getPermalink('/#efficiency'),
        },
      ],
    },
    {
      text: '解决方案',
      links: [
        {
          text: 'OpenClaw 安全审计',
          href: getPermalink('/#openclaw'),
        },
        {
          text: 'Agent/LLM/MCP 安全监控',
          href: getPermalink('/#features'),
        },
      ],
    },
    {
      text: '开源项目',
      links: [
        {
          text: '概览',
          href: getPermalink('/#quickstart'),
        },
        {
          text: 'AIGov-Insight Web',
          href: 'https://github.com/Eversec-ai/AIGov-Insight-Web',
        },
        {
          text: 'AIGov-Insight Agent',
          href: 'https://github.com/Eversec-ai/AIGov-Insight-Agent',
        }        
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
        { text: 'AIGov-Insight 全链路可观测', href: getPermalink('/#advantages') },
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
