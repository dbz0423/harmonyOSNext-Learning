import { UserInfo } from '../model/UserInfo'
import { pasteboard } from '@kit.BasicServicesKit'; // 导入模块
import { promptAction } from '@kit.ArkUI'; // 用于提示反馈

@Component
export struct UserProfile {
  @State userInfo: UserInfo = {
    id: 1,
    name: '张三',
    age: 18,
    avatar: $r('app.media.default'),
    active: true,
    Introduction: ""
  }

  // 在组件build函数中应用以下样式
  build() {
    Column() {
      // 头像部分
      Image(this.userInfo.avatar)
        .width(80)
        .height(80)
        .borderRadius(40) // 圆形头像
        .border({ width: 2, color: Color.White }) // 白色边框
        .shadow({ radius: 8, color: Color.Black, offsetX: 0, offsetY: 2 }) // 柔和阴影
        .margin({ top: 20, bottom: 15 })

      // 姓名
      Text(`姓名：${this.userInfo.name}`)
        .fontSize(28)
        .fontColor('#333')
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 6 })

      // 年龄
      Text(`年龄：${this.userInfo.age}`)
        .fontSize(26)
        .fontColor('#666')
        .margin({ bottom: 6 })

      // 邮箱（条件渲染）
      if (this.userInfo.email) {
        Text(`邮箱：${this.userInfo.email}`)
          .fontSize(26)
          .fontColor('#666')
          .margin({ bottom: 6 })
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }

      // 简介（条件渲染，带复制功能）
      if (this.userInfo.Introduction) {
        Text(`简介：${this.userInfo.Introduction}`)
          .fontSize(26)
          .fontColor('#666')
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .padding({ left: 12, right: 12, top: 8, bottom: 8 })
          .backgroundColor('#f9f9f9') // 浅灰背景
          .borderRadius(8) // 圆角背景
          .width('90%') // 限制宽度
          .margin({ bottom: 20 })
          .onClick(async () => {
            // ... 原有的复制逻辑
          })
      }

      // 状态切换按钮
      Button(this.userInfo.active ? '禁用用户' : '启用用户')
        .width('60%')
        .height(45)
        .fontSize(20)
        .fontColor(Color.White)
        .backgroundColor(this.userInfo.active ? '#ff4d4f' : '#52c41a') // 绿色启用，红色禁用
        .borderRadius(24) // 胶囊形状
        .margin({ bottom: 25 })
        .onClick(() => {
          this.userInfo.active = !this.userInfo.active
          // 添加按钮点击动画效果
          animateTo({ duration: 100, curve: Curve.EaseIn }, () => {
            // 可以在这里添加缩放效果
          })
        })

    }
    .alignItems(HorizontalAlign.Center) // 居中对齐
    .width('100%')
    .backgroundColor(Color.White) // 白色背景
    .borderRadius(16) // 卡片圆角
    .shadow({ radius: 16, color: '#10000000', offsetX: 0, offsetY: 4 }) // 柔和阴影
    .padding({ left: 20, right: 20 }) // 左右内边距
    .constraintSize({ minWidth: 300, maxWidth: 400 }) // 限制卡片宽度
  }
}