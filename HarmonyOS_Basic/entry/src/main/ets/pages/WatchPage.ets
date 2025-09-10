import { DataWatchExample } from '../components/DataWatchExample';
import { UserInfo } from '../model/UserInfo';

@Entry
@Component
struct WatchPage {
  @Prop user: UserInfo = {
    id: 111,
    name: '张三',
    age: 29,
    avatar: $r(`app.media.default`),
    email: 'zhansan@qq.com',
    active: true
  };

  build() {
    Column() {
      DataWatchExample()
    }.padding(20)
  }
}