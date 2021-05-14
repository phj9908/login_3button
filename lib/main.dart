import 'package:flutter/material.dart';

import 'Login.dart';


// refactoring : 코드의 가독성을 높이며 보다 간결하게 함
// home에 해당하는 Login 클래스는 다른 dart파일에서 작성, 그리고 여기 임포트

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Firebase login app',
      home: Login(),
    );
  }
}
