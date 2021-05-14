import 'package:firebase_login/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2, // 그라데이션
      ),
      body: _buildButton(),    // 너무 길어서 드래그 한 뒤 refact>> exact method시켜서 자동 메서드화 시킴 , (조금 매운맛 강좌 7 15분경)


    );
  }

  Widget _buildButton() {   // 원래 Padding 이었지만 body: 뒤에 와야하기에 Widget으로 자료형 바꿈, Login.dart파일 내에서만 호출할수 있도록 privacy화
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 세로축 중앙
        children: <Widget>[
          MyButton(
            image: Image.asset('image/glogo.png',width: 40,height: 40,),
            text: Text(
              'Login with google',
              style: TextStyle(color: Colors.black87,fontSize: 15),

            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: (){

            },
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('image/flogo.png', width: 40, height: 40,),
            text: Text(
              'Login with facebook',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: (){

            },
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('image/klogo.jpg', width: 35, height: 35,),
            text: Text(
              'Login with kakaotalk',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: (){

            },
          ),
        ],
      ),
    );
  }
}