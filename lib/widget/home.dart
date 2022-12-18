import 'package:cse_hackathon_2022/inha_story/inhaApi/InMatCheckNickname.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../inha_story/InHaAuth.dart';
import 'LocationQuest.dart';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static Map quests={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }


  List<Widget> widgets=[];
  init()async{
    InMatGetQuest inMatCheckNickName=InMatGetQuest();
    quests= await inMatCheckNickName.getQuest();
    print(quests);

    List list=quests['list'];
    print(list);

    for(Map map in list){
      widgets.add(Container(
       // height: 294,
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 348,
              height: 202,
              color: Colors.lightGreenAccent,
              child: Center(child: Text('${map['image']}')),
            ),
            SizedBox(height: 4,),
            Text('${map['questname']}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                letterSpacing: -18.0 * 0.02,
                color: Color(0xff262626),
              ),
            ),
            SizedBox(height: 11,),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Fluttertoast.showToast(
                          msg: '${map['description']}',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Container(

                      height: 49,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          border: Border.all(color: Color(0xffF32F22))),
                      child: Center(child: Text('상세 보기',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -18.0 * 0.02,
                          color: Color(0xffF32F22),
                        ),
                      )
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4,),
                Expanded(
                  child: InkWell(
                    onTap: () async{
                      if(map['id']==1||map['id']==2){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => LocationQuest(map:map),
                          ),

                        );
                      }else {
                        /////
                        // Uri uri = Uri.parse('http://54.83.101.17:8080/manage/request');
                        //
                        // var bodyJson = json.encode(body);
                        // final Response response = await http.post(
                        //   uri,
                        //   headers: {
                        //     "Content-Type": "application/json",
                        //     'Accept': 'application/json',
                        //   },
                        //   body: bodyJson,
                        // );
                        //
                        // // 요청 성공하면 리턴
                        // if (response.statusCode == 200||response.statusCode == 201) {
                        //   //print(utf8.decode(response.bodyBytes));
                        //   print(json.decode(utf8.decode(response.bodyBytes)));
                        //   print("sda");
                        //   return json.decode(utf8.decode(response.bodyBytes));
                        // } else {
                        //   throw Exception(
                        //       'Failed to load post ${response.statusCode}, ${utf8.decode(response.bodyBytes)}');
                        // }

                        /////
                      }

                    },
                    child: Container(

                      height: 49,
                      decoration: BoxDecoration(
                        color: Color(0xffF32F22),
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Center(child: Text('수행 하기',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -18.0 * 0.02,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24,),
          ],
        ),
      ));
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 40.0,
        title: const Text('LOGO',style: TextStyle(fontFamily: "Roboto"),),
        // leadingWidth: 10,
        // titleSpacing: 0,
        // leading: Container(color: Colors.blue,),
        actions: [
          IconButton(onPressed: (){
            Fluttertoast.showToast(
                msg: '아직 개발 중 입니다.',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                textColor: Colors.white,
                fontSize: 16.0);
          },icon: Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            //Text(quests.toString()),
            SizedBox(height: 11,),
            sideBar(),
            SizedBox(height: 24,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Column(
              children: widgets,
            ),),
            
            // SizedBox(height: 17,),
            // Container(
            //   width: 348,
            //   height: 294,
            //   decoration: BoxDecoration(
            //       border: Border.all(color: Colors.black)),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         width: 348,
            //         height: 202,
            //         color: Colors.lightGreenAccent,
            //       ),
            //       SizedBox(height: 4,),
            //       Text('정석 도서관에서 30분 앉아있기',
            //         style: TextStyle(
            //           fontSize: 18.0,
            //           fontWeight: FontWeight.w400,
            //           letterSpacing: -18.0 * 0.02,
            //           color: Color(0xff262626),
            //         ),
            //       ),
            //       SizedBox(height: 11,),
            //       Row(
            //         children: [
            //           Container(
            //             width: 171,
            //             height: 49,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.all(Radius.circular(3)),
            //                 border: Border.all(color: Color(0xffF32F22))),
            //             child: Center(child: Text('도전하기',
            //               style: TextStyle(
            //                 fontSize: 18.0,
            //                 fontWeight: FontWeight.w400,
            //                 letterSpacing: -18.0 * 0.02,
            //                 color: Color(0xffF32F22),
            //               ),
            //             )
            //             ),
            //           ),
            //           SizedBox(width: 4,),
            //           Container(
            //             width: 171,
            //             height: 49,
            //             decoration: BoxDecoration(
            //               color: Color(0xffF32F22),
            //               borderRadius: BorderRadius.all(Radius.circular(3)),
            //             ),
            //             child: Center(child: Text('도전하기',
            //               style: TextStyle(
            //                 fontSize: 18.0,
            //                 fontWeight: FontWeight.w400,
            //                 letterSpacing: -18.0 * 0.02,
            //                 color: Color(0xffFFFFFF),
            //               ),
            //             )
            //             ),
            //           ),
            //         ],
            //       )
            //
            //     ],
            //   ),
            // ),
            // SizedBox(height: 15,),

          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Mission',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Ranking',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Messege',
      //     ),
      //   ],
      // ),
      //body: Container(child: Text(InhaAuth.currentUser.toString()),),
    );
  }
}

class sideBar extends StatelessWidget {
  const sideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          InkWell(
            onTap: (){
              Fluttertoast.showToast(
                  msg: '아직 개발 중 입니다.',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  fontSize: 16.0);

            },
            child: Container(
              width: 114,
              height: 42,
              child: Center(
                child: Text('메인 미션',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -18.0 * 0.02,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
            ),
          ),
         // SizedBox(width: 20),
           SizedBox(width: 6,),
          InkWell(
            onTap: (){
              Fluttertoast.showToast(
                  msg: '아직 개발 중 입니다.',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              width: 132,
              height: 42,
              child: Center(
                child: Text('학과별 미션',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -18.0 * 0.02,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
            ),
          ),
           SizedBox(width: 6,),
          // SizedBox(width: 20),
          InkWell(
            onTap: (){
              Fluttertoast.showToast(
                  msg: '아직 개발 중 입니다.',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              width: 114,
              height: 42,
              child: Center(
                child: Text('주간 미션',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -18.0 * 0.02,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
