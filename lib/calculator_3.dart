import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,home:first(),
     )
    );
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first>  {
  String ans="";
  String a1="";
  String a2="";
  int t=0;
  get(String a)
  {
    if(a == "C")
    {
      ans = "";
    }
    else if(a == "BACK")
    {
      ans = ans.substring(0,ans.length-1);
    }
    else if(a == "+")
    {
      a1=ans;
      t=1;
      ans="";
    }
    else if(a == "-")
    {
      a1=ans;
      t=2;
      ans="";
    }
    else if(a == "*")
    {
      a1=ans;
      t=3;
      ans="";
    }
    else if(a == "/")
    {
      a1=ans;
      t=4;
      ans="";
    }
    else if(a == "+/-")
    {
      ans = "-"+ans;
    }
    else if(a == "%")
    {
      a1=ans;
      t=5;
      ans="";
    }
    else if(a == ".")
    {
      ans=ans+".";
    }
    else if(a == "=")
    {
      double x,y;
      x=double.parse(a1);
      // x=int.parse(a1);
      y=double.parse(ans);
      double c=0;
      if(t==1)
      {
        c=x+y;
      }
      else if(t==2)
      {
        c=x-y;
      }
      else if(t==3)
      {
        c=x*y;
      }
      else if(t==4)
      {
        c=(x/y).toDouble();
      }
      else if(t==5)
      {
        c=x%y;
      }
      ans=c.toString();
    }
    else
    {
      ans = ans+"$a";
    }
    setState(() { });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            centerTitle: true,
            title: Text("CONTAINER CALCULATOR"),
        ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              child:Container(
                height: 80,
                width: double.infinity,
                color: Colors.grey,
                child: Text("${ans}",style: TextStyle(color: Colors.black,fontSize: 30),),),
            ),
          ),

              Expanded(
                child: Row(children: [
                      Expanded(child: InkWell(onTap: () => get("C"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.pinkAccent,child: Text("C",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                      Expanded(child: InkWell(onTap: () => get("BACK"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.pinkAccent,child: Text("BACK",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                      Expanded(child: InkWell(onTap: () => get("%"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("%",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                      Expanded(child: InkWell(onTap: () => get("/"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("/",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                    ],
                  ),
              ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => get("7"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("7",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("8"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("8",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("9"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("9",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("*"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("*",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                  ],
                ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => get("4"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("4",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("5"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("5",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("6"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("6",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("-"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("-",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                   ],
                 ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => get("1"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("1",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("2"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("2",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("3"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("3",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("+"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("+",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                   ],
                 ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(child: InkWell(onTap: () => get("+/-"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("+/-",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("0"),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("0",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("."),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text(".",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                Expanded(child: InkWell(onTap: () => get("="),child: Container(height: 80,width: 80,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(30,10,20,20),color: Colors.blueGrey,child: Text("=",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),)),
                   ],
                 ),
            ),
            ],
      ),
    );
  }
}
