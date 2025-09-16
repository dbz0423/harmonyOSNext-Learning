@Component
@Preview
export struct StackDemo {
  @Prop avatarUrl: string = 'https://c-ssl.duitang.com/uploads/blog/202403/09/LySGeJ8Mcqj62WP.jpeg'
  @Prop username: string = '小爱同学'
  @State hasNewMsg: boolean = true // 是否有消息

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {
      // 底层：头像
      Image(this.avatarUrl || $r('app.media.me'))
        .width(60)
        .height(60)
        .borderRadius(30)
        .border({
          width: 2,
          color: Color.Red
        })

      // 消息徽章背景，红色圆定位到左上角
      if (this.hasNewMsg) {
        Circle({
          width: 18,
          height: 18
        }).fill(Color.Red).position({ x: 50, y: 0 })
        Text('8').fontSize(10).fontColor(Color.White).position({ x: 56, y: 3 }) // 文字居中
      }

      // 姓名
      Text(this.username)
        .fontSize(14)
        .fontColor(Color.Black)
        .position({ x: 8, y: 65 })
        .width(60)
        .textAlign(TextAlign.Center)
    }
    .width(70)
    .height(80)
  }
}