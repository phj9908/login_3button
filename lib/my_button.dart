import 'package:flutter/material.dart';

// 버튼 클래스 따로 만들어 다른파일에서 생성자 부르면 원하는 버튼 만들 수 있게끔
// 생성자 아규먼트 정하기 ( 로고 이미지, 텍스트 , 버튼 색상, 모서리 둥글기, 각 클릭 메서드)

class MyButton extends StatelessWidget {

  // 생성자
  MyButton( { this.image, this.text,this.color,  this.radius ,this.onPressed });

  // 메모리 절약>> 변수는 상수화 , 생성자 아규면트 상수화시킬 땐 final
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed; // 원래 onPressed 자료형식이 VoidCallback 임

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ButtonTheme(
      shape: RoundedRectangleBorder( // 네모 위젯의 모서리 둥글게
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white
        ),
        onPressed: (){

        },
        child: Row( // 아이콘 및 텍스트 가로 정렬
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 위젯 내 모든 요소들의 간격을 적당히 조정
          children: <Widget>[
            image, // Image.asset('image/glogo.png'),
            text, // ,Text(
            //   'Login with google',
            //   style: TextStyle(color: Colors.black87,fontSize: 15),
            //
            // ),
            Opacity( // 자리 조저용, 구글이미지를 투명하게 만들어 위젯내에서 안보이게함,
              opacity: 0.0, //이미지의 불투명도 조정
              child: Image.asset('image/glogo.png',width: 40,height: 40,),
            ),
          ],
        ),
      ),

    );
  }
}