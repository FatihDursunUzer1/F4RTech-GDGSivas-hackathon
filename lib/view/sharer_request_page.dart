import 'package:f4rtech_gdgsivas_hackathon/app/colors.dart';
import 'package:f4rtech_gdgsivas_hackathon/app/constants.dart';
import 'package:f4rtech_gdgsivas_hackathon/common_widget/AppBarWidget.dart';
import 'package:f4rtech_gdgsivas_hackathon/common_widget/request_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';

class SharerRequestPage extends StatefulWidget {
  @override
  _SharerRequestPageState createState() => _SharerRequestPageState();
}

class _SharerRequestPageState extends State<SharerRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            AppBarWidget('HAYIRSEVER', ColorTable.blueT[1]),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  RequestWidget(volunteer: false,degree: 4.7,text: 'Gönüllü Adı',subText: ''
                      '76 kezz Gönüllülük yaptı',onTap: (){

                  },)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
