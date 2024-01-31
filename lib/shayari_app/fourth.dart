import 'dart:math';

import 'package:shayari/shayari_app/fifth.dart';
import 'package:shayari/shayari_app/second.dart';
import 'package:shayari/shayari_app/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';


class fourth extends StatefulWidget {
  List pos1;
  int index;
  List emoji_no;
  // List pos4;
  fourth(this.pos1,this.index,this.emoji_no);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  bool color_status=false;
  int pos2=0,pos3=1;
  List ar=[
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

  // int ind=0;

  void changeindex()
  {
    // ind=random.nextInt(17);
    // print(ind);
    ar.shuffle();
    // pos2=index;
    // pos3=ar[widget.index+1];
    color_status=true;
    // Navigator.pop(context);
    setState(() { });
  }
  void bottompage()
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
                  Navigator.pop(context);
                  setState(() { });
                },
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [ar[index],ar[index+1]],
                          ),
                      ),
                      child: Text("${widget.emoji_no[widget.index]}${widget.pos1[widget.index]}${widget.emoji_no[widget.index]}",style: TextStyle(fontSize: 10,color: Colors.white),),
                     ),
                    );
                },),
          );
          setState(() { });
        },);
        setState(() { });
  }
  void fifthpage()
  {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return fifth(widget.pos1,widget.index,widget.emoji_no);
      }
      ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(data_class.name);
    controller=PageController(initialPage: widget.index);
    // controller=PageController(initialPage: ar.length);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHAYARI"),
        backgroundColor: Colors.green,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Flexible(child:
              Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: () => bottompage(),
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
                      // IconButton(onPressed: () {
                      //
                      // }, icon: Icon(Icons.restart_alt_outlined)),
                      Text("${widget.index+1}/${widget.pos1.length}"),
                      // IconButton(onPressed: () {
                      //
                      // }, icon: Icon(Icons.restart_alt_outlined)),
                      InkWell(onTap: () => changeindex(),
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
                    ],)
          ),
              Expanded(flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    widget.index=value;
                    setState(() {   });
                  },
                controller: controller,
                itemCount: widget.pos1.length,
                itemBuilder: (context, index)
                {
                  return Container(
                    alignment: Alignment.center,
                    // color: ar[index],
                    decoration: BoxDecoration(
                      color: (color_status==false)?Colors.pinkAccent : null,
                      gradient: (color_status==true)?LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [ar[pos2],ar[pos3]],
                      ):null,
                    ),
                    child: Text("${widget.emoji_no[widget.index]}${widget.pos1[index]}${widget.emoji_no[widget.index]}",style: TextStyle(fontSize: 20,),),
                  );
                },
                ),
              ),
            SizedBox(height: 300,),
            Flexible(child:
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {
                            Clipboard.setData(ClipboardData(text: "${widget.pos1[widget.index]}"));
                        }, icon: Icon(color: Colors.white,Icons.copy)),
                        IconButton(onPressed: () {
                             if(widget.index>0)
                             {
                               widget.index--;
                             }
                               controller!.jumpToPage(widget.index);
                              setState(() { });
                        }, icon: Icon(color: Colors.white,Icons.arrow_back_ios_sharp)),
                        InkWell(onTap: () => fifthpage(),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("myassets/images/shayari/pencil2.png"),
                              ),
                            ),
                          ),
                        ),
                        IconButton(onPressed: () {
                          if(widget.index<widget.pos1.length-1)
                          {
                            widget.index++;
                          }
                          controller!.jumpToPage(widget.index);
                          setState(() { });
                        }, icon: Icon(color: Colors.white,Icons.arrow_forward_ios_sharp)),
                        IconButton(onPressed: () {
                          Share.share("${widget.pos1[widget.index]}");
                        }, icon: Icon(color: Colors.white,Icons.share)),
                      ],
                  ),
                ),
            ),
        ],
      ),
    );
  }
}
