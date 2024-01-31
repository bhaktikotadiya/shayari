import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,home: first(),)
  );
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  List l = [];
  int r=0;
  int t=0;
  bool is_win = false;
  int temp=0;
  int cnt=0;
  String msg="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // List l=[];
    l=List.filled(9, "");
  }
  get(int a)
  {
      if(temp==8)
        {
            if(l[a]=="")
              {
                l[a]="X";
              }
        }
      if(l[a]=="")
        {
          if(temp%2==0)
            {
              l[a]="X";
              temp++;
              cnt++;
              win();
            }
        }
      if(temp<8)
        {
          while(l[r]!="")
          {
            r=Random().nextInt(9);
          }
          if(l[r]=="")
          {
            l[r]="O";
            temp++;
            win();
          }
        }
      win();
      setState(() { });
  }



  // get(int a)
  // {
  //           if(temp==8)
  //           {
  //             if(l[a]=="")
  //             {
  //               l[a]="X";
  //             }
  //           }
  //           cnt++;
  //           if(l[a]=="")
  //           {
  //                 print(temp);
  //                 if (temp % 2 == 0)
  //                 {
  //                   l[a] = "X";
  //                   // print(cnt);
  //                   temp++;
  //                   win();
  //                 }
  //                 while (l[r] != "")
  //                 {
  //                   r = Random().nextInt(9);
  //                 }
  //             // Future.delayed(Duration(milliseconds: 500),()
  //             // {
  //               if (l[r] == "")
  //               {
  //                 l[r] = "O";
  //                 temp++;
  //                 win();
  //               }
  //             // });
  //             setState(() {});
  //           }
  //
  //           win();
  //           setState(() {});
  // }
  win()
  {
    if(l[0]=="O" && l[1]=="O" && l[2]=="O" || l[3]=="O" && l[4]=="O" && l[5]=="O" || l[6]=="O" && l[7]=="O" && l[8]=="O" || l[0]=="O" && l[3]=="O" && l[6]=="O" || l[1]=="O" && l[4]=="O" && l[7]=="O" || l[2]=="O" && l[5]=="O" && l[8]=="O" || l[0]=="O" && l[4]=="O" && l[8]=="O" || l[2]=="O" && l[4]=="O" && l[6]=="O")
    {
      msg="PLAYER  O  IS  WIN";
      is_win=true;
    }
    else if(l[0]=="X" && l[1]=="X" && l[2]=="X" || l[3]=="X" && l[4]=="X" && l[5]=="X" || l[6]=="X" && l[7]=="X" && l[8]=="X" || l[0]=="X" && l[3]=="X" && l[6]=="X" || l[1]=="X" && l[4]=="X" && l[7]=="X" || l[2]=="X" && l[5]=="X" && l[8]=="X" || l[0]=="X" && l[4]=="X" && l[8]=="X" || l[2]=="X" && l[4]=="X" && l[6]=="X")
    {
      msg="PLAYER  X  IS  WIN";
      is_win=true;
    }
    else if(temp==9)
    {
      msg="MATCH  DRAW";
      is_win=true;
    }
    setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("ONLINE TIC TAC"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(0) : null,
                child: Container(
                  child: Text("${l[0]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(1) : null,
                child: Container(
                  child: Text("${l[1]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(2) : null,
                child: Container(
                  child: Text("${l[2]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(3) : null,
                child: Container(
                  child: Text("${l[3]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(4) : null,
                child: Container(child: Text("${l[4]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(5) : null,
                child: Container(child: Text("${l[5]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(6) : null,
                child: Container(child: Text("${l[6]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(7) : null,
                child: Container(child: Text("${l[7]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
              InkWell(onTap: () => (is_win==false) ? get(8) : null,
                child: Container(child: Text("${l[8]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.orangeAccent,),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Text("$msg",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed: () {
            msg="";
            for(int i=0 ; i<l.length ; i++)
              {
                  l[i]="";
                  temp=0;
                  is_win=false;
              }
            setState(() { });
          }, child: Text("RESET")),
        ],
      ),
    );
  }
}
