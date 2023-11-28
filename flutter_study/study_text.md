1.  project 만들기 : 터미널
    flutter create 프로젝트명
    cd 프로젝트명
    cursor . 혹은 code .

2.  Hello world : lib/main.dart
    main 함수 빼고 다 지움.
    플러터의 구성은 전부 위젯으로 되어 있다. 위젯은 레고의 블럭들이라 생각하면 된다.
    위젯을 합치는 방식으로 어플을 만드는거다.
    수많은 위젯들이 있는데 참고 할려면 공식 홈피의 위젯 사이트에서 확인해라.
    외울 필요없다. 이런것들이 있다는것만 알고 있어라. 어차피 니가 이걸 다 사용할 일은 없슴.
    플러터의 관점에서 위젯은 앱의 UI를 만드는 레고 블럭같은 거다.

3.  실행 클래스 이해하기 : lib/main.dart
    클래스를 위젯으로 만들기 위해 플러터 SDK에 있는 3개의 코어 위젯중에 하나를 extend(상속)받아야함.
    상속을 하게 되면 에러가 뜨는데 이는 build 메소드를 구현(오버라이드) 하지 않아서 이다.
    build 메소드는 너의 위젯의 UI를 만들어 주는 거임.
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

4.  모든 것은 위젯이다. 전부 선언형이야. 멤버들은 DART 클래스의 생성자들이다.
    우리는 모든 곳에 new를 써 줄 필요가 없다. 쓰던 안쓰던 똑같음. 안쓰게 해준거임.

5.  1. name parameter를 쓰기 위헤 {}를 사용한다.
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

6.  children: 은 복수의 위젯을 설치 할 수 있다. [] 배열같이 이 괄호안에 위젯들은 콤마로 추가하면 된다.
7.  Row위젯은 내부 위젯을 수평으로 나열하고 Colum위젯은 내부 위젯을 수직으로 나열한다.
8.  SizedBox위젯은 위젯의 위치와 간격을 조정하기 위한 위젯인듯 하다.
9.  멤버의 팝업 설명문의 Type를 확인해라 그게 쓸 수 있는 데이터 이다.
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
37. 새 파일 만들고 [st]만 쳐도 자동완성으로 기본 틀 만들어줌.
38. [Flexible]는 flex: 설정값(1등등)으로 화면의 비율을 설정할수 있다.
    이걸로 기종 화면 사이즈 상관없이 비율 조절이 가능하니까 자주 쓸거 같다.
    그리고 Flexible은 전체 비율이므로 화면내에 [SingleChildScrollView]같은 스크롤 뷰가 있으면 런타임시에 에러가 나는거 같다.
39. alignment：Alignment.bottomCenter 설정 등등으로 Text의 문자 위치 조절가능.
40. onPressed에 넣을 함수가 없을땐 일단 이렇게 해두자.
    onPressed: () {}
41. Expanded 위젯은 위젯 내용을 화면 끝까지 확장시키면서 보여주는 위젯이다.
42. late Timer timer; late는 나중에 값을 설정해도 된다는 의미이다.
    late는 variable modifier이다. 사용하기 전에는 반드시 초기화를 해야한다.
43. Time의 대표적인 사용예.
    late Timer timer; // late로 타이머를 선언.
    // 타이머에 쓰이는 함수에는 반드시 인자값으로 Timer timer를 넣어준다.
    void onTick(Timer timer) {
    setState(() {});
    }
    void onStartTimer() { // 버튼 눌렀을때 등 이 함수를 실행함.
    // 여기에 onClick에 ()를 넣을 필요가 없다.
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    }
    // 멈출땐
    timer.cancle();
44. 클래스에 추가한 데이터를 프로파티(property)라고 부른다.
45. 시간 표시 Duration 클래스.
    // setSecond는 변환할 데이터. 이 코드만으로는 0:24:59.000000 으로 표시됨.
    var duration = Duration(seconds: setSeconds);
    // split 지정한 "." 문자를 기준으로 문자를 나눠서 배열로 받음.
    [0:24:59 , 000000] -> 0:24:59 -> 24:59
    // subString(전체문장 7자 중에 2자리까지를 제외하고 3자리부터 마지막까지)
    duration.toString().split(".").first.subString(2, 7);
46. 위젯은 ID같은 식별자 역할을 하는 key가 있다. Flutter가 위젯을 빨리 찾을수 있게.
    크게 신경 쓸 부분은 아니고 코드 액션이 알아서 해주므로.
    const MyColumn({super.key});
47. foregroundColor도 텍스트문자의 색상을 설정할수 있지만 실제 텍스트 위젯에 설정된 color값이 우선되는거 같다.
48. elevation은 AppBar의 그림자 설정.
49. API를 사용하기 위해 먼저 http패키지를 설치해야한다.
    (https://pub.dev/packages/http/install)
    여러 인스톨 방법이 있는데. pubspec.yaml 이 파일의 [dependencies:]에 코드 추가 하는데 빠를거 같긴함. 저장하면 자동으로 패키지가 인스톨됨. 이 파일은 프로젝트에 대한 정보와 설정이 담긴 파일이다.
    혹은 터미널에서 [flutter pub add http]라고 치면 된다.

[http사용코드예]
import 'package:http/http.dart' as http;
class ApiService {
static const String baseUrl = "http://~~~~";
static const String toDay = "today";
static Future<List<Model>> getApiDatas() async {
List<Model> dataModelInstances = [];
final url = Uri.parse('$baseUrl/$toDay');
final responce = await http.get(url);
if (responce.statusCode == 200) {
final List<dynamic> datas = jsonDecode(responce.body);
for (var data in datas) {
// Model에서 각 데이터 별로 구성한 값을 dataModelInstances리스트에 넣고 반환해준다.
// 이 처리로 인해 json데이터를 문자열 데이터로 바꿔서 화면에서 쓸 수 있게됨.
dataModelInstances.add(Model.fromJson(data));
}
return dataModelInstances;
}
throw Error();
}
}
[baseUrl,toDay,getApiDatas]에 [static]을 붙히는이유.
static이 아니면 'getApiDatas' 함수를 각각의 'ApiService' 인스턴스가 소유하는 형태가 됩니다. 따라서 다음의 코드처럼 인스턴스를 만들고 함수를 호출해야 합니다.
ApiService().getApiDatas();
반면 static 지정을 하게 되면 'ApiService' 클래스 자체가 해당 함수를 소유하는 형태가 됩니다. 따라서 다음의 코드처럼 인스턴스 생성 없이 함수를 호출할 수 있습니다.
ApiService.getApiDatas();
만약 static 지정을 안하고 'ApiService.getApiData();'처럼 사용하게 되면 "Instance member 'getApiData' can't be accessed using static access." 오류가 뜹니다.

50. http 패키지의 [get] 함수를 이용. 특정 URL에 요청을 보낼 수 있다.
    하지만 get이라는 함수명보다 알기 쉽게 import 부분에 [as http]를 추가해서 http라는 이름으로 사용할수 있다.
51. get의 리턴 타입은 [Future]라는 클래스이다.
    Future안에는 Response라는 타입이 있다.
    Future는 미래에 받는 값을 의미한다. 바로 계산이 가능한 값이 아닌 API 같이 값을 받을떄 까지 기다려야 하는 경우를 얘기한다. async(비동기) programming이라 부른다.
    결과값을 기다리게 하기 위에 [await]를 설정한다. await를 사용할땐 함수에 [async]를 추가한다.
    [Future<Responce>]Future는 현재가 아닌 미래에 받을 결과 값의 타입을 알려주는거.
    그래서 완료가 되었을 때 Responce라는 타입을 반환 할꺼라고 알려주는거임.
52. throw Error(); 에러를 던져준다. 나중에 좀 자세한 정보를 검색해 보자.
53. [JSON]데이터를 구분할 모델을 만든다.
    final을 쓰는 이유는 이 데이터들은 API에서 받아오는 데이터일뿐이지 우리가 수정할 데이터는 아니기 때문인듯.
    class Model {
    final String title, thumb, id;
    // [fromJson]은 우리가 만드는 이름이고 자주 쓰이는 방식이다.
    // named constructor라고 하고 이름이 있는 클래스 생성자(constructor)이다.
    Model.fromJson(Map<String, dynamic> json)
    : title = json['title'],
    thumb = json['thumb'],
    id = json['id'];
    }
54. API로 받는 데이터를 [jsonDecode]로 분류함. 이 함수가 주는 값은 [dynamic]이다.
    dynamic은 어떤 데이터 타입이든 수용할 수 있다. 그래서 우리가 타입을 직접 정해줘야 한다.
55. Map<K, V>은 여러 종류의 데이터를 키와 벨류로 묶은 배열이다.
    K는 key이고 V는 벨류이다.
56. 이 방식 말고도 이런 데이터 관리 패턴들이 여러개 있다.
    그중에 factory 생성자도 있는데나중에 더 공부해보자.
    싱글톤에 대해서도 공부해보자.
57. [static]https://velog.io/@flutter_dart/static-const-final
    클래스 안에서 변수 혹은 메서드 앞에 static 키워드를 사용하면 해당 변수, 메서드가 인스턴스에 귀속되지 않고, 클래스에 귀속됩니다.
    인스턴스와는 완전히 별개의 변수, 메서드가 됩니다.
58. [const]https://velog.io/@flutter_dart/static-const-final
    const 키워드를 사용한 변수는 한번 값이 정해지면 더 이상 값이 바뀌지 않습니다.
    final 키워드와 비슷한데, 차이점이라고 하면, const 변수는 컴파일 타임에 값이 정해진다는 것입니다.
    컴파일 타임 : 코드가 실행되기 위해 기계어로 번역되는 시점, 컴파일을 거쳐 디바이스에서 설치하고 실행할 수 있는 프로그램, 패키지(.exe, .dmg) 가 만들어집니다.
59. [setState]는 가능하면 사용하고 싶지않다(전체 재표시이기 때문).
    그렇게 많이 쓰이지도 않음.
    ApiService를 별도의 파일로 분류할 필요는 없지만 이게 알기 편하기 떄문.
60. [StatefulWidget],[StatelessWidget] 코드액션 변경 시에 소스안에
    [setState]나 [async],[await]처리가 있으면 코드액션 메뉴가 안나오는거 같음.
61. [FutureBuilder]
    future의 값을 기다리고 데이터가 존재하는지 알려줌.
    StatelessWidget을 써도 FutureBuilder를 사용하면 비동기 처리가 가능함. async, await, setState()도 필요없게 됨.
    final Future<List<DataModel>> datas = ApiService.getApiDatas();
    override
    Widget build(BuildContext context) {
    return Scaffold(
    // FutureBuilder에게 API데이터를 기다리게 하자.
    body: FutureBuilder(
    future: datas, // 우리가 API로 부터 받을 데이터이다.
    //[builder]는 UI를 그려주는 함수다.
    [context]는 [BuildContext]즉 UI.
    [snapshot]은 future: datas의 상태(정상 에러등등)를 알 수가 있다.
    공식적으로 snapshot을 쓸 뿐 이름은 바꿔도 상관없다.

    builder: (context, snapshot) {
    // [hasData]는 데이터의 유무를 확인.
    if (snapshot.hasData) {
    return const Text('there is data');
    }
    return const Text('loading');
    },),);

62. [CircularProgressIndicator]구루구루 로딩 인디케이터 표시.
63. 많은 양의 데이터를 연속으로 보여줄떄는 [Listview]를 써야함.
    Column이나 Row는 적당치 않음.
    기본적으로는 아래와 같이 for문을 써서 컨트롤을 표시할수는 있으나 권장하지 않음.
    if (snapshot.hasData) { // 여기서 이미 null 체크중.
    return ListView(
    children: [
    //snapshot.data는 로직상 null이 될 수 없으므로 [!]를 붙히자.
    for (var data in snapshot.data!) Text(data.id),
    ],);}
    아래와 같이 null 관련 에러메세지도 [!]로 대부분 해결 가능할 듯하다.
    The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
    Try making the access conditional (using '?.') or adding a null check to the target ('!').
64. [ListView]는 위와같이 한번에 다 보여준다면 메모리 소비가 심할꺼임.
    고로 우리는 [ListView.Builder]를 사용할 필요가 있다.
    ListView.Builder는 사용자가 보고 있는 아이템만 build한다.
    안보이는 아이템은 알아서 메모리에서 삭제해 줄 것이다.
    if (snapshot.hasData) {
    return ListView.builder(
    scrollDirection: Axis.horizontal, // 스크롤 방향으로 수평으로.
    itemCount: snapshot.data!.length, // 전체 갯수는 데이터의 총 갯수로 설정.
    // ListView.builder가 아이템을 호출할때.
    어떤 아이템인지 알고 싶다면 [index]를 보면 된다. 0,1,2..이라고 알려줄 꺼임.
    itemBuilder: (context, index) {
    var data = snapshot.data![index];
    return Text(data.id);
    },)}
65. [ListView.separated] 각 요소를 구분하기 위해 사함.
    기본적으로 [ListView.Builder]와 기능이 같지만
    separatorBuilder: (context, index) => const SizedBox(
    width: 20)
    이런식으로 요소 사이에 다른 컨트롤을 추가해서 구분할 수 있다.
66. builder가 너무 많은거 같으면 위젯을 코드 액션으로 따로 메소드로 빼도 됨.
67. 컬럼 안에 리스트 뷰랑 다른 위젯을 넣었을 경우 에러가 발생함.
    [unbounded height] 제한 없는 높이값이 왔다는 에러.
    이 경우에 리스트 뷰를 Expanded(child: 리스트 뷰 위젯) 해줘야함.
    먼저 지정된 위젯의 크기를 기준으로 남는 크기를 리스트 뷰 위젯에 주겠다는 의도.
68. [Image.network(url)]로 url이미지를 표시한다.
69. 표시할 이미지가 너무 큰거 같으면 [Container]로 감싸주고 width:설정으로 해결하자.
    아무 설정없이 컨테이너를 쓰면 플러터가 자동으로 SizedBox로 바꿔 버리므로 데코레이션을 하고 싶다면 [decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),)] 설정 등으로 데코레이션하자.
    그냥 데코레이션 하면 안먹히니까 [clipBehavior: Clip.hardEdge] 설정도 추가하자.
70. 박스 그림자 추가하는 방법. offset이 그림자의 위치다.
    [boxShadow: [
    BoxShadow(
    blurRadius: 5,
    offset: Offset(0, 0),
    color: Colors.black.witOpacity(0.5) <-불투명도
    )]]
71. [padding] 수직 수평 설정하는 법.
    [padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20)]
72. 니코쎔 팁.
    가능하면 그림자는 빨간색으로 먼저 만들어 보고 나중에 이쁘게 만든느게 낫다.
73. 위젯을 다른 파일로 이동한 경우 원래 쓰고 있던 데이터들은
    새로 만든 위젯 클래스에 네임드 스페이스로 옮긴다.
74. [GestureDetector]이 위젯으로 대상 위젯을 감싸면 동작을 감지하게 됨.
    이벤트 관련 onXXXX가 엄청 많음.
    onTap은 onTapDown과 onTapUp의 조합이다 보통 이걸로 위젯 선택을 감지함.
75.     
