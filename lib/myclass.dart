import 'package:flutter/material.dart';

class myclass extends ChangeNotifier
{
  double bmi=0;
  double height=0;
  String?get;
  String?get2;
  String?mtr;
  //double w=0;

  void change(String a,String b)
  {
    //w=double.parse(b);
    height=double.parse(b)*double.parse(b);
    bmi= double.parse(a)/height;
    print("$a");
    print("$b");
    print("$bmi");
    notifyListeners();
  }
  void set(){
    get="M";
    print("m");
    notifyListeners();
  }
  void set2(){
    get="I";
    print("I");
    notifyListeners();
  }
  void setcm(){
    get2="cm";
    notifyListeners();
  }

}