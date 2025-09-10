import { router } from '@kit.ArkUI';

@Entry
@Component
struct LauncherPage {
  @State message: string = '导航栏';

  build() {
    Column({ space: 10 }) {
      Text(this.message)
      Button('个人信息卡片案例')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Index'
          })
        })
      Button('设置界面案例')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/SettingsPage'
          })
        })
      Button('数据监听案例')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/WatchPage'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}