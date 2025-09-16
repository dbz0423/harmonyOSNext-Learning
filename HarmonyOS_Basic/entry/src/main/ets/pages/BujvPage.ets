import { ColumnDemo } from '../components/ColumnDemo';
import { FlexDemo } from '../components/FlexDemo';
import { GridDemo } from '../components/GridDemo';
import { RowDemo } from '../components/RowDemo';
import { StackDemo } from '../components/StackDemo';

@Entry
@Component
struct BujvPage {
  @State message: string = 'Hello World';

  build() {
    Column({ space: $r(`app.string.Space`) }) {
      List() {
        RowDemo()
        ColumnDemo()
        FlexDemo()
        GridDemo()
        StackDemo()
      }.width('100%').height('100%')
    }
    .height('100%')
    .width('100%')
  }
}