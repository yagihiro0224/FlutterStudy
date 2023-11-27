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

6. children: 은 복수의 위젯을 설치 할 수 있다. [] 배열같이 이 괄호안에 위젯들은 콤마로 추가하면 된다.
7. Row위젯은 내부 위젯을 수평으로 나열하고 Colum위젯은 내부 위젯을 수직으로 나열한다.
8. SizedBox위젯은 위젯의 위치와 간격을 조정하기 위한 위젯인듯 하다.
9. 멤버의 팝업 설명문의 Type를 확인해라 그게 쓸 수 있는 데이터 이다.
   예:[mainAxisAlignment]의 설명팝업엔 [Type: MainAxisAlignment]가 써져있다.
10. withOpacity(1~0.1~0)처럼 소수점 단위로 조절한다. 더블형임. Opacity는 불투명도란 의미임.
11. 칼라는 Color.fromARGB로 조정을 많이 하는듯 하다. A는 알파. 투명도임. 전부 0~255까지 설정 가능함.
12. padding 조절은 [symmetric] 이게 제일 많이 쓰일듯 하다.
    [padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),]
13. ['$']를 문자로 쓰고 싶을땐 ['\$']로 쓰면 된다.
14. padding의 vertical이 수직 간격, horizontal이 수평 간격임.
15. 코드의 파란 경고줄은 const 미설정 때문인데. [> open user settings]로 들어가서
    settings.json 안에 editor.codeActionsOnSave 설정에서 "source.fixAll: true"를 추가해주면 자동으로 const가 붙음. 잘 모르겠지만 아래 설정이 있어서 난 자동 수정되었던거 같음.
    "[dart]": {
    "editor.codeActionsOnSave": {
    "source.fixAll": true},}
16. 비슷한 여러개의 위젯을 따로따로 만들지 말고 하나 위젯을 따로 파일로 옮긴후 그 위젯에다가 네임 파라메터를 추가해서 다른 클래스에서 대상 위젯을 재설정하여 사용할수 있게 해주자.
    가령 버튼을 예를 들면 아래와 같이 버튼에 표시할 문자 배경색 문자색을 마이 버튼 클래스를 생성하면서 지정할수 있을것이다.

    class MyButton extends StatelessWidget {
    final String text;
    final Color bgColor;
    final Color textColor;
    위에 변수들을 추가한후 코드 액션(컨트롤 + [.]) 메뉴에 [Create constructor for final fields]가 있다.

    const MyButton(
    {
    required this.text,
    required this.bgColor,
    required this.textColor,
    }
    )
    ...
    }

17. Widget안에 for문 쓰는법은 [...] 를 붙히는거다.
    children: [
    for (int i = 0; i < 7; i++) ...{
    Text(numString.elementAt(i)),
    }]
18. logger.i(numStrs); 로그 표시하는 코드다.
19. Padding쓰는 법.
    Padding(
    padding: const EdgeInsets.all(30), // 이게 전체적으로 패딩해주므로 많이 쓰일듯.
    chird: Row(
    .....
    ))
20. Icon(Icons.~~~) 이렇게 아이콘 씀. 엄청 많음.
21. Transform.scale은 내부 위젯 크기를 와꾸 보다 크게 만들어줄수 있다.
    child: Transform.scale(
    scale: 1.3, // 1을 기준으로 소수점 단위로 작게 혹은 크게 설정가능. 마이너스를 쓰면 내용이 뒤집어짐.
    child: Text(...))
22. Transform.translate는 내부 위젯의 표시 위치를 변경가능. Offset의 x y값을 1 기준으로 소수점단위로 변경가능.
    child: Transform.translate(
    offset: const Offset(130, -40),
    child: Text(...))
23. clipBehavior: Clip.hardEdge 설정으로 내부 위젯이 밖으로 넘어갔을때 그 넘어간 부분을 잘라줌.
24. AppBar를 별도 클래스로 옮겼을때 생기는 에러 해결방법이다. PreferredSizeWidget임을 명시해주고
    실제로 Size get preferredSize 사이즈도 지정해줘야함.
    class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
    @override
    Size get preferredSize => const Size.fromHeight(56.0);
    }
25. 칼라값을 인자값으로 넘길때 클래서 선언하는 부분의 데이터는 Colors는 안되는거 같음.
    Color로 데이터 선언하고 실제로 설정하는 부분에선 Colors를 쓰도록 하자.
    final Color appColor; // 여긴 Colors로 하면 안됨.
    required this.appColor,
    color: appColor,
    --설정하는 부분은 Colors여도 괜찮음.--
    (appColor: Colors.yellowAccent),
26. 변수명 앞에 언더바[_]를 붙히는건 이 변수가 private 한 데이터라는걸 암시한다.
27. 에러 메세지에 [constant] 붙어 있으면 일단 콘스트 문제임을 항시 기억해라.
    Arguments of a constant creation must be constant expressions.
    Try making the argument a valid constant, or use 'new' to call the constructor.

28. 아이콘을 클래스 매개변수로 설정할때는 IconData이다.
    값을 설정하는 부분에선 Icons.~로 설정한다. 아래는 Icon의 정의부분이다.
    Icon Icon(
    IconData? icon, {})
29. StatefulWidget의 State는 위젯의 데이터와 UI를 저장하고 데이터가 변경되면 위젯의 UI도 변경된다.
    StatefulWidget 위젯으로 변경 안하고 데이터 변경을 시작하면 아래와 같은 경고문이 뜬다.
    This class (or a class that this class inherits from) is marked as '@immutable', but one or more of its instance fields aren't final: MyColumn.counter

30. 화면을 인터렉티브로 만들어주는 setState함수를 해당 이벤트 함수에 쓰면 실시간으로 데이터 변경이 화면에 반영됨. setState를 부르는 순간 화면을 재표시 (build함수를 재실행)하기 때문에 이 함수안에 처리를 넣치 않아도 되긴함. 하지만 많은 사람들은 가독성을 위에 이 함수안에 처리를 넣고 있다고 함.
    void onClick() {
    setState(() {
    counter = counter + 1;
    });
    }
31. collection for 쓰는 법.
    List<int> number = [1,2,3,4,5];
    for(var n in number); // n이 number내부 데이터 들임.
32. theme: ThemeData를 설정하면.

33. Widget build(BuildContext context)의 [context]는 모든 상위 요소들에 대한 정보이다.
    받아 올 데이터가 null일 경우를 예상해서 [?] 혹은 [!]를 붙힌다.
    style: TextStyle(
    color: Theme.of(context).textTheme.titleLarge!.color,)

34. initState() 메소드는 초기화용. 딱 한번만 불린다. 거의 쓸일이 없을지도 모른다. 
35. dispose() 메소드는 위젯이 삭제 되거나 뭔가를 취소할때 자주 쓰일거다. 
36. build() 메소드는 위젯을 만든다.
37.
