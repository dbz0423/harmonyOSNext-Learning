@Component
@Preview
export struct ColumnDemo {
  build() {
    Column({ space: $r(`app.string.Space`)  }) {
      Text('签到提醒')
        .fontSize($r('app.string.font_size_title'))
        .fontWeight(FontWeight.Bold)
        .fontColor('#1A1A1A')
        .width('100%')
        .textAlign(TextAlign.Start)

      Text('上课前5分钟扫码签到上课前5分钟扫码签到上课前5分钟扫码签到上课前5分钟扫码签到上课前5分钟扫码签到上课前5分钟扫码签到')
        .fontSize($r('app.string.font_size_media'))
        .fontColor('#666666')
        .maxLines(2)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .width('100%')
        .textAlign(TextAlign.Start)

      Button('提醒')
        .width(96)
        .height(36)
        .margin({ top: 16 })
        .fontSize($r('app.string.font_size_media'))
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
        .fontColor('#FFFFFF')
        .onClick(() => {
          console.log('允许签到');
        })
    }
    .padding(16)
    .width('100%')
    .backgroundColor('#FFFFFF')
    .borderRadius(12)
    .shadow({ radius: 8, color: 'rgba(0,0,0,0.1)', offsetX: 0, offsetY: 2 })
  }
}