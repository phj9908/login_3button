// 로그인 앱과는 별개로 테스트 파일
// 은행 데베에 접속해 사용자의 통장잔고를 가져오는 앱

import 'dart:io'; // 소켓이나 http서버와 통신할 떼 필요한 라이브러리

void main(){
  showData();
}

void showData() async{

  startTask();

  String account = await accessData(); // 데이터 얻을 때 까지 기다리기 ( dart는 비동기식 언어라서 동기식 처리가 필요할 땐 await 추가 해야함 )
  fetchData(account);

}

void startTask() {

  String info = '요청 수행 시작';
  print(info);

}

Future<String> accessData() async{  // await 처리가 되어서 Future<> 제너릭 처리

  String account;


  // String info2='';
  Duration time = Duration(seconds: 3);
  //sleep(time); // 스레드 멈춤

  if(time.inSeconds >2){ // 딜레이가 2ms넘으면
    await Future.delayed(time,(){   // time만큼 딜레이 된 뒤 2번째 아규먼트 함수 실행, 이 동작이 완료될 때 까지 기다리도록 함
      account= '5500만원';
      print(account);

    });
  }else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }

  return account;
}

void fetchData(String ac) {

  String info3 = '잔액은 {$ac} 입니다.';
  print(info3);
}