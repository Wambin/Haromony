import Card from '../../components/Card'
import { PADDING } from '../../constants/size'
import { rvp } from '../../utils/responsive'

import type { INavItem, INavList } from '../../model/NavList'

@Component
export default struct Order {
  @State navList1: INavList = [
    {
      id: 1,
      text: '想看',
      icon: $r('app.media.want')
    },
    {
      id: 2,
      text: '足迹',
      icon: $r('app.media.track')
    },
    {
      id: 3,
      text: '约看',
      icon: $r('app.media.viewReq')
    },
    {
      id: 4,
      text: '拼租',
      icon: $r('app.media.coRent')
    }
  ]
  @State navList2: INavList = [
    {
      id: 1,
      text: '合同',
      icon: $r('app.media.contract')
    },
    {
      id: 2,
      text: '账单',
      icon: $r('app.media.bill')
    },
    {
      id: 3,
      text: '订单',
      icon: $r('app.media.order')
    },
    {
      id: 4,
      text: '评价',
      icon: $r('app.media.rate')
    },
    {
      id: 5,
      text: '钱包',
      icon: $r('app.media.wallet')
    }
  ]

  build() {
    Column() {
      Card({ cardPadding: rvp(PADDING) }) {
        Row({ space: rvp(38) }) {
          ForEach(this.navList1, (nav: INavItem) => {
            Row({ space: rvp(4) }) {
              Image(nav.icon).width(rvp(16)).height(rvp(16))
              Text(nav.text).fontSize(rvp(12)).fontColor($r('app.color.black'))
            }
          }, (nav: INavItem) => nav.id + '')
        }.width('100%').justifyContent(FlexAlign.Center)

        Divider().margin({ top: rvp(16) })
        Row({ space: rvp(39) }) {
          ForEach(this.navList2, (nav: INavItem) => {
            Column({ space: rvp(6) }) {
              Image(nav.icon).width(rvp(16)).height(rvp(16))
              Text('合同').fontSize(rvp(12)).fontColor($r('app.color.black'))
            }
          }, (nav: INavItem) => nav.id + '')
        }.margin({ top: rvp(12) }).justifyContent(FlexAlign.Center).width('100%')
      }
    }.margin({ top: rvp(10) })
  }
}