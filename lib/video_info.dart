import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {

  List info = [];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value){
      info = jsonDecode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.AppColor.gradientFirst.withOpacity(0.9),
            color.AppColor.gradientSecond,
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        )
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            width: MediaQuery.of(context).size.width,
            height: 250,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios, size: 20,
                    color: color.AppColor.secondPageIconColor),
                    Expanded(child: Container()),
                    Icon(Icons.info_outline, size: 20,
                        color: color.AppColor.secondPageIconColor),
                  ],
                ),
                SizedBox(height: 5,),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "and Glutes Workout",
                  style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageCont1st,
                            color.AppColor.secondPageCont2st
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timer,
                          size: 20,
                          color: color.AppColor.secondPageIconColor,),
                          SizedBox(width: 5,),
                          Text(
                            "68 min",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageTitleColor
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 250,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageCont1st,
                              color.AppColor.secondPageCont2st
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.handyman_outlined,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,),
                          SizedBox(width: 5,),
                          Text(
                            "Resistent band, kettlebell",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageTitleColor
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70)
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text(
                      "Circuit 1: Legs Toning",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color.AppColor.circuitsColor
                      ),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Icon(Icons.loop,size: 30, color: color.AppColor.loopColor,),
                        SizedBox(width: 10,),
                        Text(
                          "3 Sets",
                          style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.setsColor
                          ),
                        ),

                      ],
                    ),
                    SizedBox(width: 20,),
                  ],
                )
              ],
            ),

          )
          )
        ],
      ),
    )
    );
  }
}
