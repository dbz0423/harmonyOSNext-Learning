import { UserInfo } from '../model/UserInfo'
import { pasteboard } from '@kit.BasicServicesKit'; // 导入模块
import { promptAction } from '@kit.ArkUI'; // 用于提示反馈

@Component
export struct UserProfile {
  @State userInfo: UserInfo = {
    id: 1,
    name: '张三',
    age: 18,
    avatar: $r('app.media.default'),
    active: true,
    Introduction: ""
  }

  build() {
    Column() {
      Image(this.userInfo.avatar)
        .width(80).height(80).borderRadius(40)
      Text(`姓名：${this.userInfo.name}`).fontSize(28)
      Text(`年龄：${this.userInfo.age}`).fontSize(26)
      if (this.userInfo.email) {
        Text(`邮箱：${this.userInfo.email}`).fontSize(26)
      }
      if (this.userInfo.Introduction) {
        Text(`简介：${this.userInfo.Introduction}`).fontSize(26).textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .onClick(async () => {
            try {
              // 1. 创建纯文本类型的剪贴板数据对象
              const pasteData = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, this.userInfo.Introduction);
              // 2. 获取系统剪贴板对象
              const systemPasteboard = pasteboard.getSystemPasteboard();
              // 3. 将数据写入剪贴板
              await systemPasteboard.setData(pasteData);
              promptAction.showToast({ message: '复制成功', duration: 2000 });
            } catch (error) {
              console.error(`复制操作发生异常: ${error.code}, ${error.message}`);
              promptAction.showToast({ message: '复制失败', duration: 2000 });
            }
          })
      }
      TextInput()
      Button(this.userInfo.active ? '禁用用户' : '启用用户')
        .onClick(() => {
          this.userInfo.active = !this.userInfo.active
        })
    }.alignItems(HorizontalAlign.Start)
  }
}