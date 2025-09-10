@Component
export struct SettingsPanel {
  @Link isDarkMode: boolean
  @Link fontSize: number

  build() {
    Column({ space: 16 }) {
      Row() {
        Text('深色模式')
        Blank()
        Toggle({ type: ToggleType.Switch, isOn: this.isDarkMode })
          .onChange((isOn) => {
            this.isDarkMode = isOn // 自动同步到父组件
          })
      }

      Row() {
        Text('字体大小')
        Blank()
        Slider({
          value: this.fontSize,
          min: 12,
          max: 24,
          step: 1
        })
          .onChange((value) => {
            this.fontSize = value // 自动同步到父组件
          })
      }
    }
  }
}