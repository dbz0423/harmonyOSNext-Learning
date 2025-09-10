@Component
  // @Preview
export struct MyCard {
  build() {
    Column() {
      // 标题部分
      Text("个人信息卡片")
        .fontSize(20)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 15 })

      // 头像部分
      Row() {
        Text("头像：")
          .fontColor(Color.White)
          .fontSize(16)
          .margin({ right: 10 })

        Image("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1628674477,4257889311&fm=253&gp=0.jpg")
          .width(60)
          .height(60)
          .borderRadius(30) // 圆形头像
          .border({ width: 2, color: Color.White })
      }
      .justifyContent(FlexAlign.Start)
      .width('100%')
      .padding({ bottom: 15 })

      // 分隔线
      Divider()
        .color(Color.White)
        .strokeWidth(1)
        .margin({ top: 5, bottom: 15 })

      // 名称部分
      Row() {
        Text("名称：")
          .fontColor(Color.White)
          .fontSize(16)
          .margin({ right: 10 })

        Text("朱浩然")
          .fontColor('#E0FFFF') // 使用更柔和的浅蓝色
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
      }
      .justifyContent(FlexAlign.Start)
      .width('100%')
      .padding({ bottom: 20 })
    }
    .width('80%')
    .backgroundColor('#4A90E2') // 更柔和的蓝色
    .padding(20)
    .borderRadius(15)
    .shadow({
      radius: 10,
      color: '#000000',
      offsetX: 0,
      offsetY: 5
    })
    .margin(20)
  }
}