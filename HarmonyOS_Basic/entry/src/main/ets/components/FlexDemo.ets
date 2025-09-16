@Component
@Preview
export struct FlexDemo {
  @State skills: string[] = ['C语言', 'Vue', 'Java', 'Python', 'JavaScript', '鸿蒙开发', 'UI设计']

  build() {
    Flex({
      direction: FlexDirection.Row,
      wrap: FlexWrap.Wrap,
      justifyContent: FlexAlign.Start
    }) {
      ForEach(this.skills, (skill: string, index: number) => {
        Text(skill)
          .fontSize($r('app.string.font_size_sm'))
          .fontColor('#007DFF')
          .backgroundColor('#EBF5FF')
          .padding({
            left: 12,
            right: 12,
            top: 4,
            bottom: 4
          })
          .borderRadius(12)
          .margin({ right: 8, bottom: 8 })
      })
    }
    .width('100%')
    .padding(12)
    .backgroundColor('#F5F5F5')
    .borderRadius(8)
  }
}