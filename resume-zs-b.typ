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

  Spring Boot、Cloud家族项目、有一定的算法基础

  深入理解MySQL核心原理，擅长SQL调优、索引优化及事务设计

  熟悉Redis线程模型及核心数据结构，能解决缓存穿透、缓存雪崩等问题、熟练使用常见设计模式

  *亮点能力：*

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
  
  Kotlin、Golang、Reactive

  Webpack, TypeScript, Vite, Node.js, Vue , React , NextJs
]

== #fa-award 工作经历

#item(
  link(
    "https://www.sf-express.com/",
    [ *顺丰生鲜电商平台* ],
  ),
  [ *顺丰* ],
  date[ 2024 年 7 月 – 至今 ],
)

*【项目描述】*

项目基于顺丰“天网+地网+信息网”三网融合能力，聚焦生鲜电商“短链保鲜、精准履约、全链可视”核心诉求，通过物流能力前置到电商的深度融合架构，实现“从田间到餐桌”的全链路数字化管控。

目标用户覆盖C端消费者（家庭/个人）、B端商户（超市/餐饮）及供应链上游（农场/供应商），核心场景包括：产地直采生鲜的“预售+冷链直发”、区域仓“小时达”即时配送、B端商户“批量订货+定时达”等。  

*【顺丰技术栈选型】*


 微服务框架       SF-Mesh（顺丰服务网格） + SF-Cloud（私有云PaaS平台）  

 服务注册与配置    SF-Config（自研配置中心） + SF-Registry（自研服务注册中心）                                

 分布式事务        SF-Tx（自研分布式事务框架）                                     

 消息中间件        SF-MQ（自研高性能消息队
列）

 数据存储          主库：OceanBase（顺丰定制版分布式数据库）

 物流能力集成      顺丰物流中台API（运单生成、路由规划、时效计算） + SF-IoT（冷链设备接入平台）   

 监控与运维        SF-Eye（自研全链路监控平台） + SF-Log（日志大数据平台）                               

 前端交互          SF-UI（顺丰前端组件库） + 小程序云开发（顺丰定制版）                                          


*【架构】*


1. 用户接入层： 

   - 多端统一接入：通过SF-Gateway（基于NGINX定制）实现负载均衡、流量分发（如将“小时达”订单路由至区域仓对应的服务节点）；  

   - 安全防护：集成集团安全能力（如验证码、设备指纹），拦截“脚本抢单”等黑产行为。  


2. 业务能力层（电商核心）：  

   - 商品服务：对接供应链（农场/供应商），支持“预售商品”库存动态同步（如荔枝成熟量实时更新）；

   - 订单服务：与物流中台联动，下单时调用“时效引擎”校验配送范围（如“上海外环内支持4小时达”），生成订单同时锁定物流资源（如冷链车运力）；  

   - 营销服务：支持“冷链运费补贴”“预售定金膨胀”等特色活动，活动规则通过SF-Config动态配置；  

   - 用户服务：集成顺丰会员体系（如“钻石会员”享优先分拣），支持地址智能补全（基于物流地址库）。


3. 物流能力层（核心差异化）：

   - 物流中台：提供运单生成（与订单号绑定）、路由规划（选择最优冷链路线）、时效计算（基于历史运输数据的AI预测）接口； 

   - SF-IoT平台：接入冷链车/仓的IoT设备（温湿度传感器、GPS），实时数据通过SF-MQ推送至电商（用户端展示“当前运输温度：2℃”）；  

   - 冷链资源管理：动态管理冷链车/仓的可用容量（如大促期间临时调运冷链车），与订单服务协同完成“锁仓→用仓→释放”流程。  


4. 基础支撑层：  

   - 中间件：SF-MQ（消息）、SF-Cache（缓存）、SF-Tx（事务）提供高并发场景支撑；  

   - 云平台：SF-Cloud实现服务容器化部署（如订单服务部署在上海、广州双可用区），支持分钟级弹性扩缩容（大促期间自动扩容3倍）。  

5. 数据资产层：  
   - 实时数仓：基于Flink处理订单、物流、用户行为等实时数据（如“某区域荔枝订单量突增”触发产地直采补货）； 

   - AI应用：通过机器学习优化路由规划（避开拥堵路段）、预测生鲜损耗（如叶菜类在运输中因温度波动的损耗率）。  

*【四、核心功能模块（物流+电商融合）】*
                                                    
生鲜预售模块
冷链可视模块                           
B端商户订货模块                             
智能履约模块                 

*【五、个人职责 】*

• • 作为核心开发成员，主要负责订单服务与物流中台的集成开发，具体职责覆盖“需求-开发-优化-运维”全周期：商品中台建设

用kafka+Fink重构部分对账流程

• 设计渠道路由算法（动态路由+路由规则），基于历史成功率动态权重分配，支付整体成功率从98.2%提升至99.5%

• 和团队一起替换了easyRules变成Drools，实现分布式优惠计算引擎：支持组合优惠（阶梯满减 + 会员折扣 + 支付方式减免），误差率< 0.1%。

• 链路追踪优化：通过SF-Eye定位“订单-物流”调用链中的耗时瓶颈（如运单生成接口响应时间从200ms优化至50ms）。  

• 监控SF-MQ消息积压：大促期间实时查看消息队列状态，异常时触发自动扩容（增加消费者实例）； 


#item(
  [ *顺丰控股股份有限公司* ],
  [ *Java* ],
  date[ 2022 年 9 月 - 至今],
)

#item(
  [ *马上消费金融股份有限公司* ],
  [ *Java* ],
  date[ 2020 年 7 月 - 2022 年 9 月],
)


== #fa-code 项目经历

#item(
  link(
    "https://www.sf-express.com/",
    [ *顺丰实时风控反欺诈系统（流计算+图神经网络）* ],
  ),
  [ *顺丰* ],
  date[ 2024 年 7 月 – 至今 ],
)

*【项目背景】* 


针对顺丰日均超2000万订单中存在的恶意刷单、运费套现等灰色产业链（年损失预估3.7亿），传统规则引擎误判率高达32%。项目构建实时风控系统，在运单创建500ms内完成欺诈行为识别，拦截准确率提升至91%。

*【核心模块与技术亮点】* 

1. 动态行为图谱引擎  

   • 基于Flink CEP构建用户行为事件流，通过Neo4j图数据库实时关联历史订单、设备指纹、IP地理围栏，识别团伙作案特征（如同一设备15分钟内发起20单）  

   • 时空碰撞算法：比对收/发件地址密度与历史基线，自动标记异常集散地（如城中村突然出现大量高价值订单）  

2. 自适应规则引擎  

   • 采用Drools+Groovy脚本实现动态规则加载，支持运营人员分钟级调整策略（如大促期间放宽阈值） 

   • 模型在线学习：将拦截样本实时反馈至TensorFlow Serving模型服务，每日增量更新欺诈识别模型  

*【技术栈】*   


实时计算：Flink 1.18（精确一次语义）、Kafka Tiered Storage（PB级数据保留）  

图计算：Neo4j 5.0（APOC存储过程优化子图查询）  

存储：ClickHouse（行为日志分析）、RedisTimeSeries（实时指标聚合）  

安全：JWT+国密SM4（数据传输加密）、HSM硬件密钥管理  
  
个人职责:

  • 参与设计分层图存储策略：将热数据（7天内）缓存至RedisGraph，查询延迟从120ms→15ms  

  • 开发规则性能熔断器：当Drools规则链执行超时50ms时，自动降级至轻量级统计模型  

  • 成果：欺诈订单识别率从68%→91%，误拦截率降低60%



#item(
  link(
    "https://www.msxf.com/",
    [ *马上消费金融核心信贷审批系统优化* ],
  ),
  [ *马上消费金融股份有限公司* ],
  date[ 2022 年 09 月 – 2024 年 7 月 ],
)



*【项目描述】*

优化和重构公司核心的线上信贷审批流程，提升系统处理能力、响应速度和稳定性，以支撑日益增长的业务量和复杂的风控策略。主要工作聚焦于现有审批流程的模块化拆分、异步化改造、并发性能优化以及核心审批引擎的健壮性增强。

*【核心模块】*

  - 规则引擎集成与服务化： 负责将原有耦合在审批主流程中的硬编码规则抽取出来，集成独立的风控规则引擎服务。
  - 审批流程异步化改造： 将复杂的审批任务（征信查询、外部数据源对接、模型计算）改造为异步任务队列处理，提升主流程响应速度。
  - 分布式事务控制： 确保异步任务处理、结果回写、状态更新等跨服务操作的最终一致性（例如使用可靠消息+TCC/Saga）。
  -  缓存层优化： 针对高频率使用的风控规则、产品配置、用户准入基础信息等设计并实现多级缓存策略（本地缓存Guava + Redis集群）。
  - 高并发压力处理： 优化核心审批接口的线程模型（如使用异步Servlet、CompletableFuture）、数据库连接池配置、慢SQL排查与优化。
  
*【技术栈】* 

#tech[ 
  后端： Java 8/11, Spring Boot 2.7, Spring Cloud Alibaba (Nacos注册中心, Sentinel限流熔断, Seata分布式事务)

  中间件： Redis (哨兵/集群), RabbitMQ/Kafka (消息队列), Elasticsearch (日志分析/简单查询)

  数据库： MySQL 5.7/8.0 (读写分离, ShardingSphere分表), Oracle (部分旧模块)

  开发工具/框架： Maven, Git, Jenkins, Docker, MyBatis Plus, Hibernate Validator, JMeter (压测), ELK (日志收集分析)
 ]


*【个人职责】* 

  - 深入分析风控规则策略（反欺诈、授信额度计算、地区政策限制），​​将产品部门动态调整的规则配置转化为可执行的引擎逻辑​​，支撑日均50万+笔审批需求
  - 针对第三方征信查询耗时问题（原平均响应1.2s），​​设计异步任务分发机制​​，通过RocketMQ解耦主流程，使审批响应时效优化至200ms（​​业务结果：客户贷款申请放弃率降低18%​​）
  - 主导线上故障复盘​​：定位并修复因城市限购政策变更触发的规则冲突，建立配置变更灰度验证流程

#item(
  link(
    "https://www.msxf.com/",
    [ *智能信贷决策中台（启明）* ],
  ),
  [ *马上消费金融股份有限公司* ],
  date[ 2022 年 09 月 – 2024 年 7 月 ],
)

*【项目背景】* 

消费贷、信用卡、小微贷等业务线风控策略独立，形成数据孤岛，无法共享黑名单、共用模型，策略迭代需开发硬编码，上线周期长达2周。

本项目构建了一个集规则、模型、评分卡、决策流于一体的可视化智能风控中台，实现对全行信贷业务的统一、实时风险管控，将策略上线周期缩短至1小时内。


*【核心模块】* 



1.  高性能规则引擎服务：

      挑战：决策请求峰值QPS达3000+，需在50ms内返回结果，规则数量超万条且频繁热更新。

      实现：

           摒弃直接使用Drools原生API，采用 “KieContainer池化” 技术。为每个策略版本预先编译并缓存KieContainer，决策时直接获取，避免重复编译带来的性能损耗和GC压力。

           将频繁使用的基础数据（如黑名单、规则参数） 在服务启动时预加载至 Guava Cache，并设置定时刷新，极大减少了对数据库的访问。

           设计 “规则版本灰度发布” 机制，可通过Nacos配置中心动态切换一小部分流量到新规则版本，验证无误后再全量发布。

2.  异步数据编排模块：

      挑战： 一次决策需查询征信、三方数据、行内数据等5-10个数据源，串行调用总耗时可能超1s。

      实现：
           CompletableFuture 实现异步并行调用所有数据源接口。设置每个数据源调用的超时时间（如征信200ms，三方数据150ms），防止个别接口慢拖累整体。

           对返回结果进行编排整合，即使某个非核心数据源查询超时或失败，也可降级处理，保证决策流程继续，仅记录告警，保障了系统的高可用性。

3.  模型服务模块（MLaaS）：

      挑战： 用Python训练的模型低延迟、高稳定地集成到Java应用中。

      实现： 将训练好的XGBoost模型导出为 PMML 文件，在Java端使用 JPMML 库进行加载和实时预测。将模型文件本身放入Redis，服务启动时加载，并通过监听Redis Pub/Sub消息实现模型的热更新。

*【技术栈】* 


   后端框架： Spring Boot 2.7, Spring Cloud Gateway , OpenFeign 

   规则引擎： Drools 7.7

   异步处理： CompletableFuture, Resilience4j

   数据与缓存： PostgreSQL (规则配置管理), Redis Cluster (缓存/模型存储), Elasticsearch (征信报告查询)

   部署监控： Docker, Kubernetes, SkyWalking

*【个人职责】* 


• 参与开发了异步数据编排框架，将决策链路耗时从800ms优化至220ms，并保证了在部分数据源故障时的系统韧性。

• 参与模型服务（MLaaS）的集成方案，实现了PMML模型文件的热加载和实时推理，使风控策略能够快速融合机器学习能力。

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

