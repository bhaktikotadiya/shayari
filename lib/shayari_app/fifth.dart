import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:shayari/shayari_app/fourth.dart';
import 'package:shayari/shayari_app/second.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class fifth extends StatefulWidget {

  List pos1;
  List emoji_no;
  int index;
  // List pos1;
  fifth(this.pos1,this.index,this.emoji_no);

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  WidgetsToImageController control = WidgetsToImageController();
  bool color_status=false;
  bool text_status=false;
  bool font_status=false;
  bool font_size=false;
  bool emoji_style=false;
  Color pos6=Colors.white;
  bool pos8=false;
  double pos7=10;
  int emoji_index=0;

  List emoji=[
    "😍 🥰 😘 😗 😙 😚 😋",
    "😱 😨 😰 😥 😓 🫣 🤗",
    "🥂🍻🥤🧋🍹🍔🥚",
    "🍀🎋🎄🎟️🎪🎢🎞️🎫🎀🎍🥂🍻",
    "🍞🥐🥗🥪🍱🍱🧆🎂",
    "☕🍷🍭🍬🍫🍼🧃☕🍯🧁🍧",
    "🍱🧆🎂☕🍷🍭🍬🍫",
    "🍼🧃☕🍯🧁🍧🍝🍦",
    "👶 👧 🧒 👦 👩 🧑 👨 👩‍🦱 🧑‍🦱 ",
    "🧝‍♀️ 🧝 🧝‍♂️ 🧛‍♀️ 🧛 🧛‍♂️ 🧟‍♀️ ",
    "👨🏽‍🦼 🚶🏽‍♀️ 🚶🏽 🚶🏽‍♂️ 👩🏽‍🦯",
    "🦑 🦐 🦞 🦀 🕊️ 🦤 🦜 🦩 🪶 🪸 🐡",
    "🐉 🐲 🌵 🎄 🌲 🌳 🌴 ",
    " 🧑🏽‍🦯 👨🏽‍🦯 👦 👩 🧑 🧎🏽 ‍♀️ 🧎🏽 🧎🏽‍♂️ ",
    "😍 🥰 😘 😗 😙 😚 😋",
    "😱 😨 😰 😥 😓 🫣 🤗",
    "👶 👧 🧒 🦞 🦀 🕊️ 🦤 🦜 👨 👩‍🦱 🧑‍🦱 ",
    "🧝‍♀️ 🧝 🧝‍♂️ 🧛‍♀️ 🧛 🧛‍♂️ 🧟‍♀️ ",
    "👨🏽‍🦼 🚶🏽‍♀️ 🚶🏽 🚶🏽‍♂️ 👩🏽‍🦯",
    "🦑 🦐 🦞 🦀 🦀 🕊️ 🦤 🦜 🦩 🪶 🪸 🐡",
    "🐉 🐲 🌵 🎄 🌲 🌳 🌴 ",
    " 🧑🏽‍🦯 👨🏽‍🦯 🧎🏽‍♀️ 🧎🏽 🧎🏽‍♂️ ",
    "with out emoji"
  ];
  List weight=[
    FontWeight.bold,
    FontWeight.normal,
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900,
  ];
  int pos2=0,pos3=1,pos4=0,pos5=0;
  List ar=[
    Colors.red,
    Colors.greenAccent,
    Colors.green,
    Colors.pink,
    Colors.deepPurpleAccent,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.amber,
    Colors.pinkAccent,
    Colors.indigo,
    Colors.deepOrange,
    Colors.amberAccent,
    Colors.lightGreenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.deepOrangeAccent,
    Colors.amberAccent,
    Colors.white54,
    Colors.greenAccent,
    Colors.green,
    Colors.pink,
    Colors.deepPurpleAccent,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.amber,
    Colors.pinkAccent,
    Colors.indigo,
    Colors.deepOrange,
    Colors.amberAccent,
    Colors.lightGreenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.deepOrangeAccent,
    Colors.amberAccent,
  ];
  PageController? controller;

  void colorpage()
  {
    // ind=random.nextInt(17);
    // print(ind);
    ar.shuffle();
    color_status=true;
    // Navigator.pop(context);
    setState(() { });
  }
  gradientpage()
  {
    double Screen_height=MediaQuery.of(context).size.height;
    double Status_height=MediaQuery.of(context).padding.top;
    double AppBar_height=kToolbarHeight;
    print("Screen_height : $Screen_height");
    print("Status_height : $Status_height");
    print("AppBar_height : $AppBar_height");


    showModalBottomSheet(isScrollControlled: true,barrierColor: Colors.transparent,context: context, builder: (context)
    {
      return Container(
        height: Screen_height-Status_height-AppBar_height-5,
        child: GridView.builder(
          itemCount: ar.length-1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index)
          {
            return InkWell(onTap: () {
              pos2=index;
              pos3=index+1;
              print(pos2);
              print(pos3);
              color_status=true;
              text_status=true;
              Navigator.pop(context);
              setState(() { });
            },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  // color: ar[index],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ar[index],ar[index+1]],
                  ),
                ),
                child: Text("${widget.pos1[widget.index]}",style: TextStyle(fontSize: 10,color: Colors.white),),
                // Text("${widget.pos1[widget.index]}",style: TextStyle(fontSize: 10,color: Colors.white),),
              ),
            );
          },),
      );
      setState(() { });
    },);
    setState(() { });
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // controller=PageController(initialPage: widget.pos2);
    get_permission();
  }

  get_permission()
  async {
    var status = await Permission.storage.status;
    if(status.isDenied)
      {
        Map<Permission, PermissionStatus> statuses = await [
          Permission.location,
          Permission.storage,
        ].request();
        print(statuses[Permission.location]);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("फोटो पे शायरी लिखे"),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Flexible(flex:3,
            child: WidgetsToImage(child:
              ConstrainedBox(constraints: BoxConstraints(minHeight: 200),
                child: Container(
                  // height: 400,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (color_status==true)?Colors.red:ar[pos5],
                    gradient: (color_status==true)?LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ar[pos2],ar[pos3]],):LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ar[pos5],ar[pos5]],
                    ),
                  ),
                  child: (emoji_style==false)?
                  SingleChildScrollView(child: Text("${emoji[emoji_index]}${widget.pos1[widget.index]}${emoji[emoji_index]}",
                    style: TextStyle(
                      fontSize: (font_size==false)?15:pos7,
                      fontWeight: (font_status==false)?FontWeight.bold:weight[pos4],
                      color: pos6,),)):
                  SingleChildScrollView(child: Text("${widget.pos1[widget.index]}",
                    style: TextStyle(
                      fontSize: (font_size==false)?15:pos7,
                      fontWeight: (font_status==false)?FontWeight.bold:weight[pos4],
                      color: pos6,),)),
                ),
              ), controller: control),
          ),

          SizedBox(height: 300),
          Card(
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.black87,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),color: Colors.white,height: 50,width:200,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () => colorpage(),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("myassets/images/shayari/reload.png"),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(onTap: () => gradientpage(),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("myassets/images/shayari/expand.png"),
                                  ),
                                ),
                              ),
                            ),
                       ],),
                     ),
                  ],),

                  // ----------------------backgroundcolor------------------

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    InkWell(onTap: () {
                          showModalBottomSheet(isDismissible: false,isScrollControlled: false,barrierColor: Colors.transparent,context: context, builder: (context)
                          {
                              return Container(
                                height: 120,
                                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Row(children: [
                                        Expanded(
                                          child: GridView.builder(
                                            itemCount: ar.length - 1,
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 10,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                            ),
                                            itemBuilder: (context, index) {
                                              return InkWell(onTap: () {
                                                // ar.shuffle();
                                                pos5 = index;
                                                print(pos5);
                                                color_status = true;
                                                setState(() {});
                                              },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: ar[index],
                                                  ),
                                                ),
                                              );
                                            },),
                                        ),
                                      ],),
                                    ),
                                    Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                                      Container(
                                        // alignment: Alignment.topRight,
                                        // margin: EdgeInsets.only(top: 5),
                                        height: 30,
                                        width: 30,
                                        child: InkWell(onTap: () {
                                          Navigator.pop(context);
                                          setState(() { });
                                        },
                                            child: Image(image: AssetImage("myassets/images/shayari/close.png"),)),
                                      ),

                                    ],),
                                          ],),
                                        );
                                      },);
                                    setState(() {});
                    },
                        child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("Background",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),

                    // ----------------textcolor--------------

                    InkWell(onTap: () {
                        showModalBottomSheet(isDismissible: false,isScrollControlled: false,barrierColor: Colors.transparent,context: context, builder: (context)
                        {
                              return Container(
                              height: 130,
                              child: GridView.builder(
                              itemCount: ar.length-1,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 10,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                              ),
                              itemBuilder: (context, index)
                              {
                                    return InkWell(onTap: () {
                                    // ar.shuffle();
                                    pos6=ar[index];
                                    print(pos6);
                                    text_status=true;
                                    Navigator.pop(context);
                                    setState(() { });
                              },
                              child: Container(
                                child: Text("${widget.pos1[widget.index]}",style: TextStyle(color: ar[index])),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                color: ar[index],
                                      ),
                                    ),
                                  );
                                },),
                               );
                              },);
                              setState(() { });
                            },
                      child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("Text Color",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),

                    // ------------------------share-------------------

                    InkWell(onTap: () async {
                          Uint8List? bytes;
                          // Share.share("${widget.pos1[widget.index]}");
                          bytes = await control.capture();
                          var path = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS);
                          print(path);
                          Directory dir=Directory(path);
                          if(!await dir.exists())
                          {
                              dir.create();
                          }
                          //create image
                              String img_name="${Random().nextInt(1000)}myimg.jpg";
                              File file=File("${dir.path}/${img_name}");
                              file.writeAsBytes(bytes!);
                              Share.shareFiles(['${file.path}'],text: 'Hi this is testing');
                          },
                        child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("share",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),
                  ],),

                  // --------------------------font--------------------

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    InkWell(onTap: () {
                                showModalBottomSheet(isDismissible: false,isScrollControlled: false,barrierColor: Colors.transparent,context: context, builder: (context)
                                {
                                  return Container(
                                    height: 140,
                                    child: Column(children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                                        InkWell(onTap: () {
                                          Navigator.pop(context);
                                          setState(() { });
                                        },
                                          child: Container(
                                            // alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(top: 5),
                                            height: 30,
                                            width: 30,
                                            child: Image(image: AssetImage("myassets/images/shayari/close.png"),),
                                          ),
                                        ),
                                      ],),
                                      Expanded(
                                        child: Row(children: [
                                          Expanded(
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: weight.length,
                                              itemBuilder: (context, index)
                                              {
                                                return InkWell(onTap: ()
                                                {
                                                  pos4=index;
                                                  print(pos4);
                                                  font_status=true;
                                                  setState(() { });
                                                },
                                                  child: Container(
                                                    margin: EdgeInsets.only(top: 10,bottom: 30,left: 10),
                                                    height: 20,width: 60,
                                                    alignment: Alignment.center,
                                                    color: Colors.pink,
                                                    child: Text("शायरी",style: TextStyle(color: Colors.white,fontWeight: weight[index])),),
                                                );
                                              },
                                            ),
                                          ),
                                        ],),
                                      ),
                                    ],)
                                  );
                                },);
                                setState(() { });
                    },
                        child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("Font",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),

                    // ---------------------emoji------------------

                    InkWell(onTap: () {
                        showModalBottomSheet(isDismissible: false,isScrollControlled: false,barrierColor: Colors.transparent,context: context, builder: (context)
                        {
                              return Container(
                              height: 200,
                              color: Colors.black,
                              child: InkWell(
                                child: ListView.separated(
                                  padding: EdgeInsets.all(20),
                                  itemCount: emoji.length,
                                  itemBuilder: (context, index)
                                  {
                                      return InkWell(onTap: ()
                                      {
                                          emoji_index=index;
                                          if(index==23)
                                          {
                                            emoji_style=true;
                                          }
                                          else
                                          {
                                            emoji_style=false;
                                          }
                                          Navigator.pop(context);
                                          setState(() { });
                                      },
                                  child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Text("${emoji[index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),alignment: Alignment.center,));
                                  },
                                    separatorBuilder: (context, index) {
                                    return Divider(
                                      color: Colors.white,
                                      thickness: 2,
                                      height: 10,
                                    );
                                },),
                              ),
                            );
                        },);
                        setState(() { });
                    },
                        child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("Emoji",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),

                    // ---------------------font size-------------------

                    InkWell(onTap: () {
                          showModalBottomSheet(isDismissible: false,isScrollControlled: false,barrierColor: Colors.transparent,context: context,builder: (context)
                          {
                                  return Container(
                                      height: 120,
                                      color: Colors.black54,
                                      child: Column(children: [
                                          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                                              InkWell(onTap: () {
                                                  Navigator.pop(context);
                                                  setState(() { });
                                              },
                                                child: Container(
                                                // alignment: Alignment.topRight,
                                                    margin: EdgeInsets.only(top: 5),
                                                    height: 30,
                                                    width: 30,
                                                    child: Image(image: AssetImage("myassets/images/shayari/close.png"),),
                                                    ),
                                              ),
                                          ],),
                                          Row(children: [
                                            Expanded(
                                                child:StatefulBuilder(builder: (context, setState1) {
                                                    return Slider(min: 0,max: 100,value: pos7, onChanged: (value) {
                                                      pos7=value;
                                                      font_size=true;
                                                      setState(() {
                                                      setState1(() { });
                                                    });
                                                 },);
                                               },)
                                            ),
                                          ],)
                                      ],)
                                  );
                          },);
                    },
                        child: Container(
                          color: Colors.red,
                          height: 30,width:100,
                          child: Text("Text Size",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,),),
                          alignment: Alignment.center,),),
                  ],),
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
