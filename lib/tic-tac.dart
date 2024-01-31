
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
      runApp(MaterialApp(
            debugShowCheckedModeBanner: false,home: second(),)
      );
}
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  String a1="";
  List l = [];
  List m = [];

  bool is_win = false;
  int temp=0;
  String msg="";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // List l=[];
    l=List.filled(9, "");
    m=List.filled(9, false);
  }

  get(int a)
  { 
            if(temp%2==0)
              {
                l[a]="X";
                // if(l[a]=="O")
                // {
                //   l[a]="O";
                // }
                // else {
                //   l[a] = "X";
                // }
              }
            else
              {
                l[a] = "O";
                // if(l[a]=="X")
                //   {
                //     l[a]="X";
                //   }
                // else {
                //   l[a] = "O";
                // }
              }
            m[a]=true;
            temp++;
            win();
            setState(() { });
  }
  win()
  {
        if(l[0]=="X" && l[1]=="X" && l[2]=="X" || l[3]=="X" && l[4]=="X" && l[5]=="X" || l[6]=="X" && l[7]=="X" && l[8]=="X" || l[0]=="X" && l[3]=="X" && l[6]=="X" || l[1]=="X" && l[4]=="X" && l[7]=="X" || l[2]=="X" && l[5]=="X" && l[8]=="X" || l[0]=="X" && l[4]=="X" && l[8]=="X" || l[2]=="X" && l[4]=="X" && l[6]=="X")
        {
            msg="PLAYER X IS WIN";
            is_win=true;
        }
        else if(l[0]=="O" && l[1]=="O" && l[2]=="O" || l[3]=="O" && l[4]=="O" && l[5]=="O" || l[6]=="O" && l[7]=="O" && l[8]=="O" || l[0]=="O" && l[3]=="O" && l[6]=="O" || l[1]=="O" && l[4]=="O" && l[7]=="O" || l[2]=="O" && l[5]=="O" && l[8]=="O" || l[0]=="O" && l[4]=="O" && l[8]=="O" || l[2]=="O" && l[4]=="O" && l[6]=="O")
        {
          msg="PLAYER O IS WIN";
          is_win=true;
        }
        else if(l[0]!="" && l[1]!="" && l[2]!="" && l[3]!="" && l[4]!="" && l[5]!="" && l[6]!="" && l[7]!="" && l[8]!="")
        {
            msg="MATCH DRAW";
        }
        setState(() { });
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("TIC - TAC - TOE"),
      ),
      body:
          Column(children: [
              Expanded(
                child: Row(children: [
                  Expanded(child: InkWell(onTap: () => (is_win==false && m[0]==false ) ? get(0) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 10, 10, 0),child: Text("${l[0]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                  Expanded(child: InkWell(onTap: () => (is_win==false && m[1]==false) ? get(1) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 10, 10, 0),child: Text("${l[1]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                  Expanded(child: InkWell(onTap: () => (is_win==false && m[2]==false) ? get(2) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 10, 10, 0),child: Text("${l[2]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                ],),
              ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => (is_win==false && m[3]==false) ? get(3) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 0),child: Text("${l[3]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                Expanded(child: InkWell(onTap: () => (is_win==false && m[4]==false) ? get(4) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 0),child: Text("${l[4]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                Expanded(child: InkWell(onTap: () => (is_win==false && m[5]==false) ? get(5) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 0),child: Text("${l[5]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
              ],),
            ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => (is_win==false && m[6]==false) ? get(6) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 10),child: Text("${l[6]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                Expanded(child: InkWell(onTap: () => (is_win==false && m[7]==false) ? get(7) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 10),child: Text("${l[7]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
                Expanded(child: InkWell(onTap: () => (is_win==false && m[8]==false) ? get(8) : null,child: Container(width: 100,height: 100,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(10, 5, 10, 10),child: Text("${l[8]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.amberAccent,),),),
              ],),
            ),
            Text("$msg",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () {
              msg="";
              for(int i=0 ; i<l.length ; i++)
              {
                      l[i]="";
                      is_win=false;
              }
              setState(() {

              });

            }, child: Text("RESET")),
          ],),
    );
  }
}
