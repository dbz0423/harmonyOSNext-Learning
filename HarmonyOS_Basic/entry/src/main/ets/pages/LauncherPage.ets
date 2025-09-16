import { router } from '@kit.ArkUI';

@Entry
@Component
struct LauncherPage {
  @State currentIndex: number = 0; // 控制当前选中的Tab

  build() {
    Tabs({ barPosition: BarPosition.End }) { // 设置Tab栏在底部
      // 第一个Tab：案例页面
      TabContent() {
        Column({ space: $r('app.string.Space')}) {
          Text('案例展示')
            .fontSize(20)
            .margin(10)

          Button('个人信息卡片案例')
            .onClick(() => {
              router.pushUrl({
                url: 'pages/Index'
              });
            })
            .width('90%')
            .margin(5)

          Button('设置界面案例')
            .onClick(() => {
              router.pushUrl({
                url: 'pages/SettingsPage'
              });
            })
            .width('90%')
            .margin(5)

          Button('数据监听案例')
            .onClick(() => {
              router.pushUrl({
                url: 'pages/WatchPage'
              });
            })
            .width('90%')
            .margin(5)

          Button('布局案例')
            .onClick(() => {
              router.pushUrl({
                url: 'pages/BujvPage'
              });
            })
            .width('90%')
            .margin(5)
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Start)
      }
      .tabBar('案例') // 第一个Tab的标签

      // 其他Tab页面（根据需要添加）
      TabContent() {
        Text('其他功能页面')
          .fontSize(20)
      }
      .tabBar('功能')

      TabContent() {
        Text('设置页面')
          .fontSize(20)
      }
      .tabBar('设置')
    }
    .width('100%')
    .height('100%')
    .barMode(BarMode.Fixed) // 固定模式的Tab栏
    .onChange((index: number) => {
      this.currentIndex = index; // 更新当前选中的Tab索引
    })
  }
}