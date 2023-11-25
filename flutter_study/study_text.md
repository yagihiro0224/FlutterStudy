1. project 만들기 : 터미널
   flutter create 프로젝트명
   cd 프로젝트명
   cursor . 혹은 code .

2. Hello world : lib/main.dart
   main 함수 빼고 다 지움.
   플러터의 구성은 전부 위젯으로 되어 있다. 위젯은 레고의 블럭들이라 생각하면 된다.
   위젯을 합치는 방식으로 어플을 만드는거다.
   수많은 위젯들이 있는데 참고 할려면 공식 홈피의 위젯 사이트에서 확인해라.
   외울 필요없다. 이런것들이 있다는것만 알고 있어라. 어차피 니가 이걸 다 사용할 일은 없슴.
   플러터의 관점에서 위젯은 앱의 UI를 만드는 레고 블럭같은 거다.

3. 실행 클래스 이해하기 : lib/main.dart
   클래스를 위젯으로 만들기 위해 플러터 SDK에 있는 3개의 코어 위젯중에 하나를 extend(상속)받아야함.
   상속을 하게 되면 에러가 뜨는데 이는 build 메소드를 구현(오버라이드) 하지 않아서 이다.
   build 메소드는 너의 위젝의 UI를 만들어 주는 거임.
   함수 안에 build만 치면 빌드 자동완성 코드가 표시되니까 그걸 선택하면 됨.
   우리는 구글 스타일의 MaterialApp 을 리턴 하던가
   애플 스타일의 CupertinoApp 을 리턴 해야 됨.
   (CurpertinoApp을 사용할 경우: import 'package:flutter/cupertino.dart';)
   오리지널 스타일 어플을 만든다고 하더라도 일단 선택을 해줘야 됨.
   어차피 만들다 보면 오리지널 스타일이 되니까 걱정안해도 됨.
   MaterialApp, CupertinoApp 도 클래스 인데 안에 멤버들이 엄청 많음.
   일단 MaterialApp() 안에 home: Text('hello world!'), 을 추가하면 화면에 표시된다.
   플러터의 규칙중에 하나는 화면이 Scaffold라는 걸 가져야 한다는 것임.
   또 그안에 appBar: 랑 body:를 가져다 놓을 수 있슴.
   항상 뭘 쓸수 있는지는 마우스 오버해서 멤버들을 확인할 것.

4. 모든 것은 위젯이다. 전부 선언형이야. 멤버들은 DART 클래스의 생성자들이다.
   우리는 모든 곳에 new를 써 줄 필요가 없다. 쓰던 안쓰던 똑같음. 안쓰게 해준거임.

5. 1. name parameter를 쓰기 위헤 {}를 사용한다.
   2. [required] 반드시 설정해줘야 하는 멤버임.
      class Player {
      String name;
      Player({required this.name}); // 반드시 name parameter를 설정해야됨.
      }

   3. 하지만 [required]가 없고 데이터명 뒤에 [?]를 써주는 경우는
      name parameter를 설정해도 안해도 된다는 의미임. 보통 플러터는 이런 위젯(클래스)가 많다.
      class Player {
      String? name;
      People({this.name});
      }
      var kim = Player(); // name parameter가 있지만 설정 안해도 됨.
6. 