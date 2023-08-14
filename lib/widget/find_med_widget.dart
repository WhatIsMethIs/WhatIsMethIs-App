// class MyHomePage_after
// 가로 스크롤을 이용하여 사진으로 알약 찾기 / 이름으로 알약 찾기 / 비상 연락망 등록하기 페이지로 넘어감
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/constants/colors.dart';

class FindMed extends StatefulWidget {
  _FindMedState createState() => _FindMedState();
}

class _FindMedState extends State<FindMed> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FindWidget();
  }
}

class FindWidget extends StatelessWidget {  
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(33, 0, 0, 0),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // 가로 스크롤
          child: Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: Stack(children: [
                    Container(
                      child: Image.asset(
                        'images/icon_yellowbox.png',
                        fit: BoxFit.contain
                      )
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(26, 133, 98, 81),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '사진으로\n알약 찾기',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter-ExtraBold',
                          ),
                        )
                      )
                    ),
                    SizedBox(width: 26),
                    Container(
                      margin: EdgeInsets.fromLTRB(26, 53, 0, 0),
                      child: Icon(
                        CupertinoIcons.photo_on_rectangle,
                        size: 28,
                        color: Color(0xFF9A9526),
                      )
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(28, 201, 32, 23),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '알약을 카메라로 찍으면\n이름을 알려줘요',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Inter-ExtraBold',
                          ),
                        )
                      )
                    )
                  ]
                )
              ),
              SizedBox(width: 33, height: 268),
              InkWell(
                onTap: () {},
                child: Stack(children: [
                  Container(
                    child: Image.asset(
                      'images/icon_greenbox.png',
                      fit: BoxFit.contain
                    )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(26, 133, 98, 81),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '이름으로\n알약 찾기',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter-ExtraBold',
                        ),
                      )
                    )
                  ),
                  SizedBox(width: 26),
                  Container(
                    margin: EdgeInsets.fromLTRB(26, 53, 0, 0),
                    child: Icon(
                      CupertinoIcons.textformat,
                      size: 28,
                      color: Color(0xFF5EAB39),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(28, 201, 32, 23),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '이름을 검색하면\n알약 이미지를 알려줘요',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Inter-ExtraBold',
                        ),
                      )
                    )
                  )
                ]
              )),
              SizedBox(width: 33, height: 268),
              InkWell(
                onTap: () {},
                child: Stack(children: [
                  Container(
                    child: Image.asset(
                      'images/icon_yellowbox.png',
                      fit: BoxFit.contain
                    )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(26, 133, 98, 81),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '비상 연락망\n등록하기',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter-ExtraBold',
                        ),
                      )
                    )
                  ),
                  SizedBox(width: 26),
                  Container(
                    margin: EdgeInsets.fromLTRB(26, 53, 0, 0),
                    child: Icon(
                      CupertinoIcons.exclamationmark_circle_fill,
                      size: 28,
                      color: Color(0xFF9A9526),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(28, 201, 32, 23),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '약을 먹지 않으면\n등록된 번호로 알림을 보내요',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Inter-ExtraBold',
                        ),
                      )
                    )
                  )
                ]
              )
            ),
          ],
        )
      )
    );
  }
}
