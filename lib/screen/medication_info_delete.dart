import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/component.dart';
import '../components/textstyle.dart';

class MedicationInfoDelete extends StatefulWidget {
  const MedicationInfoDelete({Key? key}) : super(key: key);

  @override
  _MedicationInfoDeleteState createState() => _MedicationInfoDeleteState();
}

class _MedicationInfoDeleteState extends State<MedicationInfoDelete> {
  List<String> lunch = [
    "아침",
    "점심",
    "아침",
    "점심",
    "아침",
    "저녁",
    "아침",
    "점심",
    "아침",
    "점심"
  ];
  List<String> after = [
    "식후",
    "식후",
    "식전",
    "식후",
    "식전",
    "식후",
    "식후",
    "식후",
    "식전",
    "식후"
  ];
  List<String> itemName = [
    "타이레놀6시간이알서방정",
    "타이레놀7시간이알서방정",
    "타이레놀8시간이알서방정",
    "타이레놀9시간이알서방정",
    "타이레놀10시간이알서방정",
    "타이레놀11시간이알서방정",
    "타이레놀12시간이알서방정",
    "타이레놀13시간이알서방정",
    "타이레놀14시간이알서방정",
    "타이레놀15시간이알서방정",
  ];
  List<int> cnt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<String> images = [
    "",
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg',
    "",
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg',
    'assets/images/test_cat.jpg'
  ];
  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(lunch.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return safeAreaPage(
      Colors.white,
      Colors.white,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultHeader("복약 정보 삭제하기", context, 
            CupertinoButton(
                minSize: 0,
                padding: EdgeInsets.all(0),
                onPressed: () {
                  //delete
                },
                child: Icon(
                    CupertinoIcons.trash,
                    color: Colors.black.withOpacity(0.9),
                    size: 28,
                  ),
              )
            ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: lunch.length,
                itemBuilder: (BuildContext context, int index) {
                  return medicationDeleteRow(index);
                }),
          ),
        ],
      ),
    );
  }

  GestureDetector medicationDeleteRow(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked[index] = !_isChecked[index];
        });
        print(_isChecked[index]);
      },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CupertinoCheckbox(
              onChanged: null,
              value: _isChecked[index],
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              activeColor: greenColor,
              inactiveColor: greenColor,
            ),
            pillShortInfoBox(images[index], lunch[index], after[index],
                itemName[index], cnt[index]),
          ],
      ),
    );
  }

  Padding pillShortInfoBox(
      String image, String lunch, String after, String itemName, int cnt) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * Left Image
          Container(
            margin: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundColor: mainColor,
              radius: 40,
              child: image.isEmpty
                  ? const Text("💊")
                  : CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 38,
                    ),
            ),
          ),
          // * Right Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$lunch $after", style: blackTextStyle(16)),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(itemName, style: darkGrayTextStyle(15), softWrap: true,),
                  const SizedBox(width: 15),
                  Text("${cnt}정", style: darkGrayTextStyle(15), softWrap: true,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}