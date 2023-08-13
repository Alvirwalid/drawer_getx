import 'package:get/get.dart';

class PressedState extends GetxController{

  var pressedBool=false.obs;
  var selectedInfo=1.obs;
  var subjectSelect=1.obs;
  var toggleSwitch=1.obs;
  var switchbtn=false.obs;

  changeStatus( ){
    if(pressedBool.value==true){
      pressedBool.value=false;
    }else{
      pressedBool.value=true;
    }
    update();
  }
  changeTab(int item){
    selectedInfo.value=item;
    update();

  }
  changeSub(int count){
    subjectSelect.value=count;
    update();
  }
  changeToggle(int index){
    toggleSwitch.value=index;
    print('change toggle ${toggleSwitch.value}');

  }
   changeSwitchState(bool value){
    switchbtn.value=value;
   }

}