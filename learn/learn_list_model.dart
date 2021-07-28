import 'package:flutter/cupertino.dart';

class LearnListModel extends ChangeNotifier{

  List<String> titles =['NextSage','青チャート数ⅡB','フォレスタゴール数学','FP3級皆が欲しい'];
  List<String> pages =['p11','p10','p22','p23','P24'];
  List<String> units =['4現在完了・未来形','5現在完了と使用不可','6原則として進行形に','7現在完了形のhave','8現在完了形のhave'];

  notifyListeners();

}