import 'package:shayari/shayari_app/second.dart';
import 'package:shayari/shayari_app/fourth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../shayari_app/first.dart';



class third extends StatefulWidget {
  int pos;
  List temp;
  third(this.pos,this.temp);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  List name=[];
  List pos1=[];
  // List pos4=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(data_class.name);

    switch(widget.pos)
        {
      case 0:
        name=data_class.imgone;
        pos1=data_class.dataone;
        break;
      case 1:
        name=data_class.imgtwo;
        pos1=data_class.datatwo;
        break;
      case 2:
        name=data_class.imgthree;
        pos1=data_class.datathree;
        break;
      case 3:
        name=data_class.imgfour;
        pos1=data_class.datafour;
        break;
      case 4:
        name=data_class.imgfive;
        pos1=data_class.datafive;
        break;
      case 5:
        name=data_class.imgsix;
        pos1=data_class.datasix;
        break;
      case 6:
        name=data_class.imgseven;
        pos1=data_class.dataseven;
        break;
      case 7:
        name=data_class.imgeight;
        pos1=data_class.dataeight;
        break;
      case 8:
        name=data_class.imgnine;
        pos1=data_class.datanine;
        break;
      case 9:
        name=data_class.imgten;
        pos1=data_class.dataten;
        break;
      case 10:
        name=data_class.imgeleven;
        pos1=data_class.dataeleven;
        break;
      case 11:
        name=data_class.imgtwelve;
        pos1=data_class.datatwelve;
        break;
      case 12:
        name=data_class.imgthirteen;
        pos1=data_class.datathirteen;
        break;
      case 13:
        name=data_class.imgfourteen;
        pos1=data_class.datafourteen;
        break;
        // pos4=pos1;
    }
  }



  @override
  Widget build(BuildContext context) {
    // List <bool> temp=List.filled(name.length, false);
    return Scaffold(
      appBar: AppBar(
        title: Text("SHAYARI"),
        backgroundColor: Colors.green,
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {
            print("your item is shared");
            Share.share("${pos1}");
          }, icon: Icon(Icons.share)),
          IconButton(onPressed: () {
            print("your item is edit");
          }, icon:  Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
        child: ListView.separated(
          // padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          itemCount: name.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTapUp: (details)
              {
                print("hello");
                widget.temp[index]=false;
                setState(() { });
              },
              onTapCancel: ()
              {
                print("hiiiiiiiii..");
                widget.temp[index]=false;
                setState(() { });
              },
              onTapDown: (details)
              {
                print("how..........");
                widget.temp[index]=true;
                setState(() { });
              },
              child: ListTile(
                tileColor: (widget.temp[index]==true)?Colors.red:Colors.pinkAccent,
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return fourth(pos1,index,data_class.emoji_no);
                })
                );
              },
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return fourth(pos1,index,data_class.emoji_no);
                        },)
                        );
                        setState(() {});
                      },
                      icon: Icon(Icons.navigate_next),
                    ),
                  ],
                ),
                leading:
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("${name[index]}"),
                        ),
                    ),
                  ),
                title: Text("${data_class.emoji_no[index]}",
                    style: TextStyle(fontSize: 10,fontFamily: "one",fontWeight: FontWeight.bold)),
                subtitle: Text(maxLines: 2,"${pos1[index]}",
                        style: TextStyle(fontSize: 10, fontFamily: "six",fontWeight: FontWeight.bold)),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              // color: Colors.black,
              height:8,
              thickness: 4,
            );
            // return SizedBox(height : 1,);
          },
        ),
      ),

      // body: Image.asset("${img[0]}"),
    );
  }
}
