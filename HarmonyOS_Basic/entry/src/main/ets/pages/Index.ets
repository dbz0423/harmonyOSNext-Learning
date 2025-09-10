import MyButton from '../components/MyButton.ets'
import { MyCard } from '../components/MyCard.ets'
import { UserProfileList } from '../components/UserProfileList';
import { UserProfile } from '../components/UserProfile';

@Entry
@Component
struct Index {
  @Prop isOnline: boolean = false;

  build() {
    Column() {
      // Text(this.isOnline ? "在线" : "离线")
      //   .fontSize(18)
      //   .fontColor(Color.White)
      //   .padding(10)
      //   .backgroundColor(this.isOnline ? '#4CAF50' : '#F44336')
      //   .borderRadius(20) // 圆角胶囊样式
      //   .margin({ bottom: 30 })
      // MyButton()
      // MyCard()

      UserProfile()
      UserProfileList()
    }
    .width('100%')
    .padding(20) // 统一内边距
    .backgroundColor('#F5F5F5') // 设置页面背景色
  }
}