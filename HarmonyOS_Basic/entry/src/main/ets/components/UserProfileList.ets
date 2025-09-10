import { UserInfo } from '../model/UserInfo'
import { UserProfile } from './UserProfile'

@Component
export struct UserProfileList {
  @State userInfos: UserInfo[] = [{
    id: 1,
    name: '张三',
    age: 18,
    avatar: $r('app.media.default'),
    active: true,
    Introduction: "这是第一个人的简介一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一"
  }, {
    id: 2,
    name: '李四',
    age: 20,
    avatar: $r('app.media.me'),
    active: true
  }, {
    id: 3,
    name: '王五',
    age: 22,
    avatar: $r('app.media.default'),
    active: true,
    email: '2569876934@qq.com'
  },
    {
      id: 4,
      name: '赵六',
      age: 24,
      avatar: $r('app.media.default'),
      active: true
    },
  ]

  build() {
    Column() {
      List() {
        ForEach(this.userInfos, (item: UserInfo) => {
          ListItem() {
            UserProfile({ userInfo: item })
          }
        }, (item: UserInfo) => item.id.toString())
      }
    }
  }
}