#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-apple = icon("icons/fa-apple.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let person-age = icon("icons/person-walking-luggage-solid-full.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photograph-width: 10em,
  // gutter-width: 2em,
)[
  = 赵帅

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 175-1048-9066",
    ),
    (
      icon: fa-building-columns,
      content: "铜陵学院",
    ),
    (
      icon: fa-graduation-cap,
      content: "计算机科学与技术",
    ),
    (
      icon: fa-envelope,
      content: "ambi.vip@qq.com",
      link: "mailto:ambi.vip@qq.com",
    ),
    (
      icon: fa-github,
      content: "github.com/ambi-vip",
      link: "https://github.com/ambi-vip",
    ),
    (
      icon: person-age,
      content: "男｜26岁"
    ),
  )
][
  #h(2em)

  具备大型企业级系统的架构设计和核心功能开发能力，专注于高并发设计与优化、领域驱动设计与开发

  *技术能力：*

  Java（精通）、Kotlin（熟练）、Golang（了解）

  Spring Boot、Cloud家族项目

  深入理解MySQL核心原理，擅长SQL调优、索引优化及事务设计

  熟悉Redis线程模型及核心数据结构，能解决缓存穿透、缓存雪崩等问题、熟练使用常见设计模式

  *亮点能力：*

  技术专利：拥有两篇电子签章技术专利，关注技术发展趋势

  业务分析：能够深入理解业务需求，整理领域模型，将其转化为高质量的技术实现和适当扩展

  技术沉淀：善于将复杂业务场景抽象总结，形成通用的技术平台能力

  学习能力：可塑性强，不断优化代码结构和系统性能，推动技术标准和最佳实践落地
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *操作系统*
  
  *掌握*
  
  *熟悉*

  *了解*
][
  #fa-linux Linux, #h(0.5em) #fa-windows Windows #fa-apple Mac
  
  Springboot, Mysql, Redis
  
  Kotlin、Golang

  Webpack, Vue, TypeScript, Node.js
]



== #fa-code 项目经历

#item(
  link(
    "https://www.qiyuesuo.com/",
    [ *数字可信电签云平台* ],
  ),
  [ *泛微网络科技股份有限公司* ],
  date[ 2020 年 07 月 – 至今 ],
)

#tech[ Java, Spring Boot, Maven, MyBatis, Hazelcast ]

【项目规模】：15个微服务模块，7000+类文件，服务10万+企业用户，日均处理合同100万+份

【工作简述】
  -  针对企业多渠道多维度方式提供合同相关服务 如 泛微、微信、钉钉等对接到电子签系统
  -  在项目架构层面，公私有云核心业务电子签整套的代码架构设计和优化工作，业务功能迭代、新兴技术研发，针对不同企业定制化响应开发，提升系统的扩展性和维护性，提供系统并发。
  - 针对法律法规、完成签名算法升级，对接CA，合法合规全链路存证及其日志追踪
  - 签署人员身份验证、意愿校验，AI风险分析，印章预警。
  - 跨平台集成：对接DocuSign、LuxTrust、AdobeSign等国际平台

#item(
  link(
    "https://www.qiyuesuo.com/",
    [ *电子签章全链路私有平台* ],
  ),
  [ *泛微网络科技股份有限公司* ],
  date[ 2023 年 01 月 – 至今 ],
)

#tech[ Java, Spring Boot, Maven, MyBatis, Hazelcast ]

*内容:*

- 参与实现高性能数字签名处理引擎，支持RSA、ECC、国密SM2/SM3/SM4算法体系
- 协同完成摘要签名技术，通过预生成密钥池等优化手段，签名处理性能提升40%
- 集成多CA证书服务，支持权威CA、平台自签、事件型证书等多种证书类型
- 开发时间戳服务接入，确保签署时间的权威性和不可否认性
- 主导与海内外知名电子签平台的接轨工作，提升公司在国际市场的竞争力，推动公司业务增长。
- 推动业务规则的标准化与实施，确保团队高效运作。

*业绩:*

1. 性能优化

- 重构超大业务接口，采用流式处理与并发计算，将100MB JSON数据处理时间从15分钟压缩至10秒以内。

- 优化达梦、MySQL等数据库慢查询SQL，查询性能提升至原1/160（3分钟→20ms），显著增强系统效率。

- 优化大事务接口，通过本地线程与简化Kafka方案，将响应时间降至200ms/请求，提升服务稳定性。

2. 业务架构设计

- 通过责任链、策略、装饰器模式优化签署委托流程，提升业务扩展灵活性与流程效率。

- 独立完成国际合同平台对接，集成DocuSign、Luxtrust等平台，实现国内外用户高效协作。

3. 技术创新

- 构建高性能微服务架构，融合领域驱动设计与事件溯源，降低系统复杂度与运维成本。

- 开发内存Join方案及Tk.Mybatis扩展，封装缓存集成与AOP日志，提升研发维护效率。

- 基于Golang搭建自动化数据处理平台，实现通用业务流程自动化，提高准确性与效率。

- 活用JProfiler、Arthas等工具持续优化系统性能。

#item(
  link(
    "https://www.qiyuesuo.com/",
    [ *文档集成中心* ],
  ),
  [ *泛微网络科技股份有限公司* ],
  date[ 2023 年 01 月 – 2022 年 7 月 ],
)


- 开发OFD国标文档处理引擎，完整支持OFD格式的签名、验证、转换功能
- 实现PDF深度处理能力，包括数字签名、表单填充、水印添加、防篡改等功能
- 设计分布式文档转换系统，通过分片并行处理，大文档转换速度提升30倍
- 开发多格式兼容引擎，支持Word/Excel/PPT等50+种文档格式的统一处理


#item(
  link(
    "https://www.qiyuesuo.com/",
    [ *智能印控中心* ],
  ),
  [ *泛微网络科技股份有限公司* ],
  date[ 2021 年 6 月 – 2022 年 11 月 ],
)


- 参与统一的印章库平台建设，可对组织内部不同形态统一管理
- 完成印章的全生命周期、提供了简单的审批流程
- 参与印章过程留痕服务，印章风险预警服务

#item(
  link(
    "https://www.qiyuesuo.com/",
    [ *一汽集团电签平台* ],
  ),
  [ * * ],
  date[ 2022 年 02 月 – 至今 ],
)


北京宝马；一汽-大众、物流、奔腾、丰田、解放、富华电签平台 高级Java工程师 2022.02-至今
-短链接服务建设，支持链接长期有效，免登录等
-合同权限细化处理，支持各维度查询及其性能优化
-建设一汽印章统一管理平台，降低系统维护成本
-优化签署用量业务、E签宝能力变更、组织架构和身份定制化处理

== #fa-award 获奖情况

#item(
  [ *蓝桥杯 全国赛个人组* ],
  [ *一等奖* ],
  date[ 2017 年 10 月 ],
)

#item(
  [ *互联网+ 大学生创新创业大赛* ],
  [ *省级银奖* ],
  date[ 2018 年 10 月 ],
)

#item(
  [ *ACM-ICPC 安徽赛* ],
  [ *银奖* ],
  date[ 2018 年 5 月 ],
)


#item(
  [ *19年度全校奖项多个* ],
  [ *特别突出奖、校特别奖学金、市级创业一等奖* ],
  date[ 2019 年 10 月 ],
)


== #fa-building-columns 校园经历

#item(
  [ *Acm学会会长* ],
  [],
  date[ 2017 年 09 月 – 2019 年 06 月 ],
)


#item(
  [ *易班平台技术中心主任* ],
  [],
  date[ 2018 年 09 月 – 2020 年 06 月 ],
)
