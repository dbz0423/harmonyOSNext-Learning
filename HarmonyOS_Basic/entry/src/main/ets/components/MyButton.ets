@Component
  // @Preview
export default struct MyButton {
  @State private isPressed: boolean = false

  build() {
    Row({ space: 10 }) {
      Button("主要按钮")
        .stateEffect(true) // 启用按压动效
        .type(ButtonType.Capsule) // 统一胶囊样式
        .backgroundColor(this.isPressed ? '#3D8B91' : '#50AEB6')
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            this.isPressed = true
          } else if (event.type === TouchType.Up) {
            this.isPressed = false
          }
        })


      Button("次要按钮")
        .stateEffect(true) // 启用按压动效
        .type(ButtonType.Capsule) // 统一胶囊样式
        .backgroundColor(this.isPressed ? '#3D8B91' : '#50AEB6')
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            this.isPressed = true
          } else if (event.type === TouchType.Up) {
            this.isPressed = false
          }
        })


      Button("危险按钮")
        .stateEffect(true) // 启用按压动效
        .type(ButtonType.Capsule) // 统一胶囊样式
        .backgroundColor(this.isPressed ? '#3D8B91' : '#50AEB6')
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            this.isPressed = true
          } else if (event.type === TouchType.Up) {
            this.isPressed = false
          }
        })
    }
  }
}