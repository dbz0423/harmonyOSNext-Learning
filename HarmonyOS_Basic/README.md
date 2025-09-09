# 鸿蒙（HarmonyOS）开发基础学习指南

## 📖 项目概述

本项目是鸿蒙应用开发的**基础学习库**，涵盖环境搭建、ArkTS语法、UI开发、状态管理、数据存储等核心内容。通过代码示例和渐进式练习，帮助开发者从零构建鸿蒙应用开发能力。

------

## 🛠️ 开发环境配置

### 必备工具

- **IDE**：DevEco Studio（[官方下载链接](https://developer.harmonyos.com/cn/develop/deveco-studio)）
- **SDK**：HarmonyOS 4.0+（安装时勾选Node.js和SDK）
- **语言**：ArkTS（主力推荐）

### 环境验证

```
# 创建Empty Ability项目
# 编译运行后模拟器显示"Hello World"即成功
```

------

## 📚 学习路径规划（6周入门计划）

### 第1周：环境与基础认知

- **目标**：搭建环境并运行第一个应用
- **内容**： 鸿蒙分布式特性与开发优势 DevEco Studio界面操作 创建并运行Hello World项目

### 第2-3周：ArkTS语言基础

- **核心知识点**： 变量与数据类型（`let`, `const`, `number`, `string`） 条件与循环（`if`, `for`, `while`） 函数与类（方法定义、类继承） 装饰器初识（`@Entry`, `@Component`）

### 第4-6周：UI开发与布局

- **核心组件**： 基础组件：`Text`、`Button`、`Image`、`TextInput` 布局容器：`Column`（垂直）、`Row`（水平）、`Stack`（层叠） 样式设置：尺寸、颜色、边距、圆角（示例见下方代码）
- **实战项目**：个人资料页面、登录界面

------

## 🧩 核心概念详解

### 1. 声明式UI

```
// 示例：Column布局与组件使用
@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('Hello HarmonyOS')
        .fontSize(20)
        .fontColor('#000')
      Button('点击')
        .onClick(() => {
          // 事件处理
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F3F3F3')
  }
}
```

### 2. 状态管理

- **@State**：组件内状态（数据变化自动刷新UI）
- **@Prop**：父子组件单向传值
- **@Link**：父子组件双向绑定

```
@State count: number = 0
Button('点击+1')
  .onClick(() => { this.count++ })
Text(`计数: ${this.count}`)
```

### 3. 布局技巧

- **间距控制**：`padding`（内边距）、`margin`（外边距）
- **对齐方式**：`justifyContent(FlexAlign.SpaceBetween)`
- **自适应布局**：百分比宽度（`width('80%')`）

------

## 📂 项目结构示例

```
harmony-basics/
├── entry/src/main/ets/
│   ├── pages/
│   │   ├── Index.ets              # 首页
│   │   └── Profile.ets            # 个人页面
│   ├── model/
│   │   └── DataModel.ets          # 数据模型
│   └── resources/                 # 资源文件
├── README.md
└── build-profile.json5            # 构建配置
```

------

## 🚀 每日学习安排建议

| 时间    | 学习内容              | 实践任务                 |
| ------- | --------------------- | ------------------------ |
| 第1-2天 | ArkTS变量、函数       | 编写简单计算器逻辑       |
| 第3-4天 | Column/Row布局        | 实现横向排列的图标导航栏 |
| 第5-6天 | TextInput与Button交互 | 完成登录表单UI           |
| 周末    | 综合练习              | 开发个人资料卡片组件     |

------

## 🌟 基础实战项目

1. **待办事项列表**（巩固状态管理） 功能：添加任务、标记完成、删除 技术点：`@State`、`List`、`LazyForEach`
2. **天气展示应用**（网络与数据解析） 功能：获取API数据、JSON解析、UI动态更新 技术点：HTTP请求、数据绑定

------

## ❓ 常见问题（FAQ）

**Q1: 没有编程基础能直接学鸿蒙吗？**
 → 建议先花1-2周学习JavaScript基础（变量、函数、条件判断），再开始鸿蒙开发。

**Q2: 一定要用华为手机测试吗？**
 → 不一定，DevEco Studio提供模拟器（Phone、TV、Wearable），可完成大部分测试。

**Q3: ArkTS和TypeScript的区别？**
 → ArkTS基于TypeScript扩展，增加了声明式UI和状态管理装饰器语法，但基础语法通用。

------

## 🔗 学习资源推荐

1. **官方文档**：[HarmonyOS开发者中心](https://developer.harmonyos.com/)
2. **视频教程**：B站鸿蒙开发官方账号、免费实战课程
3. **社区**：华为开发者论坛、Stack Overflow（harmonyos标签）
4. **书籍**：《鸿蒙应用开发实战》（ArkTS版）

------

## 📝 学习记录建议

采用**康奈尔笔记法**整理知识点：

- **主栏**：记录核心概念和代码示例
- **侧栏**：提炼关键词（如`@State`、`Column`）
- **底栏**：总结心得与未解决问题

标记系统推荐：

- ⚠️ 注意事项（如：内存泄漏风险）
- ✅ 已掌握内容（如：布局嵌套）
- ❓ 待研究问题（如：分布式数据同步）

------

**最后更新**：2025年9月9日
 ​**​适用版本​**​：HarmonyOS 4.0/5.0，DevEco Studio 4.0+

> 💡 **提示**：学习时务必遵循**动手优先**原则，每个知识点需配套代码实践。遇到问题可查阅官方文档或社区论坛。