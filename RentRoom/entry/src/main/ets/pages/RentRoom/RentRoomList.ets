import NavBar from "../../components/NavBar";
import { getWindowTopHeight, rvp } from "../../utils/responsive";
import SearchFilter from "./SearchFilter";

@Builder
export function RoomListBuilder() {
  RentRoomList()
}
@Component
struct RentRoomList {
  @State message: string = 'Hello World';
  pathStack: NavPathStack = new NavPathStack();
  // pathStack: NavPathStack =  AppStorage.get<NavPathStack>('mainNavStack')!

  build() {
 NavDestination(){
   Stack() {
     Column(){
       WaterFlow()
     }.padding({top:getWindowTopHeight() + rvp( 44 + 44 )})

     Column() {
       NavBar({
         title: '房源推荐',
        onBack: () => {
           this.pathStack.pop()
        }
       })
       SearchFilter()
     }.height('100%').padding({ top: getWindowTopHeight() })
   }.height('100%').alignContent(Alignment.TopStart)
 }.onReady((context:NavDestinationContext) => {
   this.pathStack = context.pathStack;
 }).hideTitleBar(true).hideBackButton(true).hideToolBar(true)
  }
}