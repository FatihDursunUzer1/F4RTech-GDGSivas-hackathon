import 'package:f4rtech_gdgsivas_hackathon/app/colors.dart';
import 'package:f4rtech_gdgsivas_hackathon/app/constants.dart';
import 'package:f4rtech_gdgsivas_hackathon/app/enums.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class SharerApproved extends StatelessWidget {
  String text1;
  String text2;
  bool voluntter=false;
  Color color1;
  Color color2;
  String requestStatus;
  Color iconColor = Colors.white;
  String photo1;
  String photo2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Container(
        height: Constants.getHeightValue(context, 78),
        width: Constants.getWidthValue(context, 328),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              color1.withOpacity(0.3),color2.withOpacity(0.3)
            ]
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        child: Stack(
          children: [
            Positioned(
                    left: Constants.getWidthValue(context, 50),
              right: Constants.getWidthValue(context, 50),
              top: -Constants.getHeightValue(context, 25),
              child: Icon(
                  Icons.compare_arrows,
                size: Constants.getHeightValue(context, 130),
                color: iconColor.withOpacity(0.3),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Center(
                        child: Container(
                          height: Constants.getHeightValue(context, 56),
                          width: Constants.getHeightValue(context, 56),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: Image.asset(
                            this.photo1
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height: Constants.getHeightValue(context, 56),
                        width: Constants.getWidthValue(context, 86),
                        child: Text(
                          text1,
                          style: TextStyle(
                            color: color1,
                            fontWeight: FontWeight.w700,
                            fontSize: Constants.getHeightValue(context, 15)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Container(
                        height: Constants.getHeightValue(context, 45),
                        width: Constants.getWidthValue(context, 86),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          text2,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: color2,
                              fontWeight: FontWeight.w700,
                              fontSize: Constants.getHeightValue(context, 15)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Container(
                        height: Constants.getHeightValue(context, 56),
                        width: Constants.getHeightValue(context, 56),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Image.asset(
                            this.photo2
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  SharerApproved({this.text1='text1', this.text2='text2',this.voluntter =false,this.requestStatus}){
    if(requestStatus ==RequestStatus.COMPLETED.toString()) iconColor =ColorTable.green;
    else if(requestStatus ==RequestStatus.WAITING.toString()) iconColor =ColorTable.yellow;
    else if(requestStatus ==RequestStatus.DENIED.toString()) iconColor =Colors.red;
    if(voluntter == false){
      color1 = ColorTable.blue;
      color2 = ColorTable.green;
      photo1 = 'assets/sprofile.png';
      photo2 = 'assets/vprofile.png';
    }
    else{
      color1 = ColorTable.green;
      color2 = ColorTable.blue;
      photo1 = 'assets/vprofile.png';
      photo2 = 'assets/sprofile.png';
    }
  }
}
