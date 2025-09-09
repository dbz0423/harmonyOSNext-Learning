# 鸿蒙（HarmonyOS）全栈学习与实战项目

## 📖 项目概述

本项目是一个综合性的鸿蒙（HarmonyOS）学习仓库，包含从基础语法到分布式应用实战的完整代码示例和项目案例。目标是帮助开发者系统掌握鸿蒙开发技能，并具备构建跨设备应用的能力。

## ✨ 特性

- **渐进式学习路径**：从ArkTS语法基础到Stage模型高级应用
- **多端适配**：支持手机、平板、智能穿戴等12类鸿蒙设备
- **分布式能力**：集成软总线、跨设备数据同步和任务调度
- **实战项目**：包含健康管理、电商、智能家居等行业场景案例
- **性能优化**：方舟编译器AOT优化，启动速度提升60%

## 🏗️ 项目结构

```
HarmonyOS-Projects/
├── docs/                       # 文档目录
│   ├── LEARNING_PATH.md       # 详细学习路径
│   └── DISTRIBUTED_GUIDE.md   # 分布式开发指南
├── basics/                    # 基础语法示例
│   ├── arkts-basics/          # ArkTS数据类型与装饰器
│   ├── arkui-components/      # 声明式UI组件
│   └── state-management/      # @State/@Prop状态管理
├── intermediate/              # 中级功能模块
│   ├── network-api/           # HTTP请求与JSON解析
│   ├── data-persistence/      # Preferences数据库
│   └── device-ability/        # 相机/位置等硬件调用
├── advanced/                  # 高级特性
│   ├── distributed-data/      # 分布式数据管理
│   ├── cross-device/          # 多端协同实现
│   └── performance-opt/       # 渲染与内存优化
└── projects/                  # 完整实战项目
    ├── health-manager/        # 健康管理应用（含传感器）
    ├── e-commerce/            # 分布式电商应用
    ├── smart-home/            # 智能家居控制端
    └── news-reader/           # 多端新闻阅读器
```

## 🛠️ 开发环境要求

- **IDE**：DevEco Studio 4.0+ ([下载链接](https://developer.harmonyos.com/cn/develop/deveco-studio))
- **SDK**：HarmonyOS 5.0 API Version 9+
- **语言**：ArkTS（主力）/ JavaScript / Java
- **设备**：支持Phone、TV、Wearable等模拟器或真机

## 🚀 快速开始

### 1. 环境配置

```
# 安装Node.js (v14.19.1+)
node --version

# 配置Ohpm包管理工具
ohpm install <package_name>

# 安装HDC调试工具
hdc list targets
```

### 2. 运行第一个示例

```
# 克隆项目
git clone https://github.com/your-repo/HarmonyOS-Projects.git

# 打开DevEco Studio导入项目
File → Open → 选择basics/hello-world目录

# 选择模拟器并运行
Run → Run 'hello-world'
```

### 3. 编译构建

修改 `build-profile.json5` 配置目标设备：

```
{
  "targets": [
    {
      "name": "default",
      "deviceType": "phone",  // 可选: tablet, tv, wearable
      "apiVersion": 9
    }
  ]
}
```

## 📚 学习路径规划

### 阶段一：基础入门（1-2个月）

**目标**：掌握ArkTS基础和ArkUI组件开发

- ✅ [ArkTS语法速成](https://yuanbao.tencent.com/chat/naQivTmsDa/basics/arkts-basics/)：类型系统/装饰器/响应式编程
- ✅ [UI开发基础](https://yuanbao.tencent.com/chat/naQivTmsDa/basics/arkui-components/)：Text/Button/Image组件
- ✅ [布局系统](https://yuanbao.tencent.com/chat/naQivTmsDa/basics/arkui-components/layouts/)：Flex/Row/Column/Stack
- 🎯 **实战项目**：待办事项列表、简易计算器

### 阶段二：核心技术（2-3个月）

**目标**：掌握应用模型和系统能力

- ✅ [Stage模型](https://yuanbao.tencent.com/chat/naQivTmsDa/intermediate/stage-model/)：UIAbility生命周期管理
- ✅ [数据持久化](https://yuanbao.tencent.com/chat/naQivTmsDa/intermediate/data-persistence/)：Preferences/关系型数据库
- ✅ [网络请求](https://yuanbao.tencent.com/chat/naQivTmsDa/intermediate/network-api/)：HTTP/HTTPS/WebSocket
- 🎯 **实战项目**：天气应用、本地新闻阅读器

### 阶段三：进阶实战（3-4个月）

**目标**：掌握分布式能力和多端适配

- ✅ [设备协同](https://yuanbao.tencent.com/chat/naQivTmsDa/advanced/cross-device/)：分布式数据同步
- ✅ [响应式布局](https://yuanbao.tencent.com/chat/naQivTmsDa/advanced/responsive-layout/)：多端UI适配规范
- ✅ [性能优化](https://yuanbao.tencent.com/chat/naQivTmsDa/advanced/performance-opt/)：内存管理/渲染优化
- 🎯 **实战项目**：分布式购物车、跨设备相册

### 阶段四：项目实战（4-6个月）

**目标**：企业级应用开发与架构设计

- ✅ [元服务开发](https://yuanbao.tencent.com/chat/naQivTmsDa/projects/meta-service/)：原子化服务卡片
- ✅ [AI集成](https://yuanbao.tencent.com/chat/naQivTmsDa/projects/ai-integration/)：小艺语音API调用
- ✅ [端云一体化](https://yuanbao.tencent.com/chat/naQivTmsDa/projects/cloud-integration/)：华为云服务对接
- 🎯 **实战项目**：完整电商应用、智能办公套件

## 🌟 实战项目演示

### 项目一：健康管理应用 ([代码](https://yuanbao.tencent.com/chat/naQivTmsDa/projects/health-manager/))

https://example.com/demo/health.gif <!-- 可选：添加GIF演示 -->

- **技术栈**：传感器数据采集 + 分布式数据库 + 图表可视化
- **特性**：
   ▶ 实时心率/压力监测
   ▶ 多设备数据同步（手机/手表）
   ▶ 健康趋势分析报表
- **适配设备**：Phone、Wearable、Tablet

### 项目二：分布式电商应用 ([代码](https://yuanbao.tencent.com/chat/naQivTmsDa/projects/e-commerce/))

- **核心技术**：
   ▶ 跨设备购物车（手机→平板→TV无缝切换）
   ▶ 分布式支付（多端安全验证）
   ▶ 推荐算法集成
- **性能指标**：启动时间<400ms，帧率稳定60FPS

## 🤝 参与贡献

欢迎提交Issue和Pull Request！贡献前请阅读：

1. [贡献指南](https://yuanbao.tencent.com/chat/naQivTmsDa/docs/CONTRIBUTING.md)
2. 代码需遵循华为开发规范 ([参考](https://developer.harmonyos.com/))
3. 提交前运行测试用例：`ohpm test`

## 📊 性能优化建议

- **渲染优化**：使用LazyForEach替代ForEach循环
- **内存管理**：监控泄漏工具：DevEco Profiler → Memory
- **包体积优化**：配置HAP压缩，移除未使用资源
- **启动加速**：设置异步初始化任务，延迟加载非核心模块

## 🗺️ 后续规划

-  集成鸿蒙AI引擎（小艺视觉/NLP）
-  适配HarmonyOS NEXT纯血鸿蒙
-  开发元服务（Atomic Service）示例
-  添加IoT设备连接案例（开发板控制）

## 📃 许可证

本项目采用 Apache 2.0 许可证 - 详见 [LICENSE](https://yuanbao.tencent.com/chat/naQivTmsDa/LICENSE) 文件

## 📮 常见问题

**Q1: 如何选择开发语言？ArkTS还是JS？**
 → 推荐ArkTS（性能更好+官方主力维护），JS仅兼容旧项目

**Q2: 真机调试需要特殊权限吗？**
 → 需要申请调试证书：[申请指南](https://developer.huawei.com/consumer/cn/doc/distribution/app/agc-help-apply-0000001102363452)

**Q3: 分布式开发必须有多台真实设备吗？**
 → 可使用DevEco模拟器组网功能模拟多设备环境

## 🔗 资源链接

- [官方文档](https://developer.harmonyos.com/)
- [ArkTS语言规范](https://developer.harmonyos.com/cn/docs/documentation/doc-guides/arkts-learn-0000001774120146)
- [开源项目集合](https://gitee.com/openharmony)
- [华为开发者论坛](https://developer.huawei.com/consumer/cn/forum/258399785320726528)

------

*此项目参考华为官方文档、CSDN博客、掘金开发社区()及鸿蒙最佳实践整理而成。最后更新：2025年9月*