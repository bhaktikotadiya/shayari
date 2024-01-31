import 'package:shayari/shayari_app/second.dart';
import 'package:shayari/shayari_app/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
    ),
  );
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List <bool> temp=List.filled(data_class.name.length, false);

  @override
  void initState( ) {
    // TODO: implement initState
    super.initState();
    // print(data_class.name);
    // print(cnt);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("SHAYARI"),
        backgroundColor: Colors.green,
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {
            Share.share("${data_class.name}");
            print("your item is shared");
          }, icon:  Icon(Icons.share)),
          IconButton(onPressed: () {
            // print("your item is edit");
            showDialog(barrierColor: Colors.transparent,barrierDismissible: false,context: context, builder: (context)
            {
              return AlertDialog(alignment: Alignment.topRight,backgroundColor: Colors.black,
                    actions: [
                      TextButton(style: ButtonStyle(alignment: Alignment.topLeft),onPressed: () {
                        print("your item is edit");
                      },child: Text("setting",style: TextStyle(fontSize: 20,color: Colors.white),),),
                      TextButton(style: ButtonStyle(alignment: Alignment.topLeft),onPressed: () {
                        print("your item is edit");
                      },child: Text("Rate us",style: TextStyle(fontSize: 20,color: Colors.white),),),
                      TextButton(style: ButtonStyle(alignment: Alignment.topLeft),onPressed: () {
                        print("your item is edit");
                      },child: Text("Share",style: TextStyle(fontSize: 20,color: Colors.white),),),
                  ],scrollable: true,);
            },);
          }, icon:  Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Card(
        child: ListView.separated(
          itemCount: data_class.name.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTapUp: (details)
              {
                    print("hello");
                    temp[index]=false;
                    setState(() { });
              },
              onTapCancel: ()
              {
                    print("hi..");
                    temp[index]=false;
                    setState(() { });
              },
              onTapDown: (details)
              {
                    print("how are you");
                    temp[index]=true;
                    setState(() { });
              },
              child: ListTile(
                tileColor: (temp[index]==true)?Colors.pinkAccent:null,
                trailing: (temp[index]==true)?Icon(Icons.arrow_forward_ios_outlined):null,
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return third(index,temp);
                  })
                  );
                },
                leading:
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("${data_class.img[index]}"),)),),
                title: Text("${data_class.name[index]}",
                    style: TextStyle(fontSize: 20,fontFamily: "one",fontWeight: FontWeight.bold)),
                // subtitle:Text("${data_class.n[index]}",
                //     style: TextStyle(fontSize: 10, fontFamily: "six")),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              // color: Colors.black,
              height: 8,
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
