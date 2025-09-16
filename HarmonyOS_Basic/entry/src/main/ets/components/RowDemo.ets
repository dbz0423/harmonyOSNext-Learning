@Component
@Preview
export struct RowDemo {
  build() {
    Row({ space: $r(`app.string.Space`) }) {
      Image($r(`app.media.me`))
        .width(24)
        .height(24)
        .objectFit(ImageFit.Contain)

      Text('鸿蒙开发')
        .fontSize($r('app.string.font_size_big'))
        .fontWeight(FontWeight.Medium)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .layoutWeight(1)

      Button('详情')
        .type(ButtonType.Capsule)
        .width(80)
        .height(28)
        .fontSize(12)
        .fontColor('#007DFF')
        .backgroundColor('#FFFFFF')
        .borderColor('#007DFF')
        .borderWidth(1)
    }
    .padding({ left: 16, right: 16 })
    .height(56)
    .width('100%')
    .backgroundColor('#FFFFFF')
    .shadow({ radius: 0, color: '#DDDDDD', offsetX: 0, offsetY: 1 })
  }
}