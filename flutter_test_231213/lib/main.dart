// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, constant_identifier_names

import "package:flutter_test_231213/Menu.dart";

import "lib.dart";

void main() {
  runApp_(NaverDictPage());
}

class NaverDictPage extends StatefulWidget {
  NaverDictPage({super.key});

  @override
  State<NaverDictPage> createState() => _NaverDictPageState();
}

class _NaverDictPageState extends State<NaverDictPage> {
  List<bool> list_bool = List<bool>.generate(8, (index) => false);

  @override
  Widget build(BuildContext context) {
    const FontWeight SUB_MENU_FONT_WEIGHT = FontWeight.w600;
    const double MAX_WIDTH = 1200;
    const double SUB_LANG_MENU_FONT_SIZE = 12;

    const double LANG_SELECT_PADDING_WIDTH = 3.5;
    const double LANG_SELECT_PADDING_HEIGHT = 5;
    return MenuWithScaffold(
      width: MAX_WIDTH,
      backgroundColor: NAVER_COLOR,
      headLeft: [
        NaverDict_Menu_TextButton(
          text: "Naver",
          fontSize: 20,
          fontColor: Colors.white,
          fontWeight: FontWeight.w900,
          hoverBackgroundColor: Colors.transparent,
        ),
        NaverDict_Menu_TextButton(
          text: "사전",
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        NaverDict_VerticalDivline(),
        NaverDict_Menu_TextButton(
          text: "파파고",
        ),
        NaverDict_VerticalDivline(),
        NaverDict_Menu_TextButton(
          text: "오픈사전 PRO",
        ),
        NaverDict_VerticalDivline(),
        NaverDict_Menu_TextButton(
          text: "참여번역",
        ),
        NaverDict_VerticalDivline(),
        NaverDict_Menu_TextButton(
          text: "지식백과",
        ),
      ],
      headRight: [
        TextButton_(
          text: "로그인",
          fontColor: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 8.0),
        ),
        VerticalDivider(
          width: 1,
          color: Colors.black,
          thickness: 0.2,
        ),
        IconButton_(
          icon: Icons.grid_view,
          iconColor: Colors.white,
          margin: EdgeInsets.all(8.0),
        ),
        VerticalDivider(
          width: 1,
          color: Colors.black,
          thickness: 0.2,
        ),
        // NaverDict_VerticalDivline(height: double.maxFinite),
      ],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //lang choose sub Menu
          Row_LeftAndRight(
            width: MAX_WIDTH,
            height: 35,
            leftChildren: [
              TextButton_(
                text: "사전홈",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "영어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "국어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "한자",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "일본어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "중국어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "프랑스어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "스페인어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "독일어",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "영영",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
              TextButton_(
                text: "더보기",
                fontWeight: SUB_MENU_FONT_WEIGHT,
                fontSize: SUB_LANG_MENU_FONT_SIZE,
              ),
            ],
          ),

          DivLine_(
            width: double.maxFinite,
          ),
          Row_(
            height: 300,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.05),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row_(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text_(
                            text: "어학사전",
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                          TextButton_(
                            text: "영어단어장",
                            fontColor: Colors.black38,
                            fontWeight: FontWeight.w800,
                          ),
                          DivLine_(
                            height: 10,
                          ),
                          TextButton_(
                            text: "작은창 사전",
                            fontColor: Colors.black38,
                            fontWeight: FontWeight.w800,
                          ),
                          DivLine_(
                            height: 10,
                            width: 0.2,
                          ),
                          TextButton_(
                            text: "오픈사전",
                            fontColor: Colors.black38,
                            fontWeight: FontWeight.w800,
                          ),
                        ]),
                    Row_(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyTextButtonSelection(indexTrue: 0, children: [
                          TextButton_(
                            text: "전체 검색",
                            hoverActiveBackgroundColor: Colors.black12,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "영어",
                            hoverActiveBackgroundColor: Colors.black12,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "국어",
                            hoverActiveBackgroundColor: Colors.black12,
                            fontColor: Colors.black,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "한자",
                            hoverActiveBackgroundColor: Colors.black12,
                            fontColor: Colors.black,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "일본어",
                            hoverActiveBackgroundColor: Colors.black12,
                            fontColor: Colors.black,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "중국어",
                            hoverActiveBackgroundColor: Colors.black12,
                            fontColor: Colors.black,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                          TextButton_(
                            text: "프랑스어",
                            hoverActiveBackgroundColor: Colors.black12,
                            fontColor: Colors.black,
                            activeFontColor: NAVER_COLOR,
                            bReSet_isActive_when_reClick: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: LANG_SELECT_PADDING_WIDTH,
                                vertical: LANG_SELECT_PADDING_HEIGHT),
                          ),
                        ]),
                        TextButton(
                          child: Row(
                            children: [Text_(text: "전체"), Icon(Icons.add)],
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: MaterialStatePropertyAll(Size.zero),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: LANG_SELECT_PADDING_WIDTH,
                                      vertical: LANG_SELECT_PADDING_HEIGHT)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              )),
                        )
                      ],
                    ),
                    Empty(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Input(
                          width: 550,
                          fontSize: 20,
                          margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          borderRadius: 0,
                        ),
                        IconButton_(
                          icon: Icons.search,
                          backgroundColor: NAVER_COLOR,
                          borderRadius: 0.0,
                          size: 24,
                          height: 38,
                          width: 38,
                          margin: EdgeInsets.fromLTRB(0, 0.7, 0, 0),
                          iconColor: Colors.white,
                        ),
                      ],
                    ),
                  ]),
              DivLine_(
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                width: 0.5,
                height: 150,
              ),
              Container(width: 300, child: Text_(text: "지식백과")),
            ],
          ),
        ],
      ),
    );
  }
}

class FlutterMainPage extends StatelessWidget {
  FlutterMainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_(
          height: 87,
          title: Row(
            children: [
              Empty(width: 30),
              Icon_(
                icon: Icons.flutter_dash,
                size: 40,
              ),
              Empty(width: 5),
              Text_(
                text: "Mozotein",
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          actions: [
            TextButton_(
              text: "Multi-Platform",
            ),
            TextButton_(
              text: "Development",
            ),
            TextButton_(
              text: "Ecosystem",
            ),
            TextButton_(
              text: "Showcase",
            ),
            TextButton_(
              text: "Docs",
            ),
            IconButton_(
              icon: Icons.search,
              iconColor: Colors.white,
              size: 20,
            ),
            TextButton_(
                backgroundColor: Colors.white,
                text: "Get Started",
                fontSize: 14,
                fontColor: Colors.black,
                fontWeight: FontWeight.w900,
                padding: EdgeInsets.symmetric(vertical: 10.5, horizontal: 22.5),
                margin: EdgeInsets.fromLTRB(22, 0, 66, 0)),
          ]).as_AppBar(),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
