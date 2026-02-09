/**
 * 避让区填充容器
 * @author wambin
 * @since 2025/12/10
 */
@Component
export struct BottomSafeArea {
  @StorageProp('bottomRectHeight')
  bottomRectHeight: number = 0

  build() {
    Row() {

    }
    .width('100%')
    .height(this.bottomRectHeight)

  }
}

