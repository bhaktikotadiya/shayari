
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: second(),
  ));
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List l = [];
  bool is_win = false;
  String msg="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l = List.filled(9, "");
    for (int i = 0; i < l.length; i++)
    {
        int r = Random().nextInt(9);
        if (!l.contains(r))
        {
          l[i] = r;
        }
        else
        {
          i--;
        }
        setState(() {});
    }
    for (int i = 0; i < l.length; i++)
    {
        if(l[i]==0)
        {
          l[i]="";
        }
    }
    win();
    setState(() {});
  }

  win()
  {
          if(l[0]=="1" && l[1]=="2" && l[2]=="3" && l[3]=="4" && l[4]=="5" && l[5]=="6" && l[6]=="7" && l[7]=="8" && l[8]=="")
          {
            msg="YOU ARE WINNER";
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
          title: Text("NUMBER PUZZEL"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: () {
                    if(l[1]=="")
                      {
                        l[1]=l[0];
                        l[0]="";
                        // win();
                      }
                    else if(l[3]=="")
                    {
                      l[3]=l[0];
                      l[0]="";
                      // win();
                    }
                    win();
                    setState(() { });

                },
                  child: Container(
                    child: Text("${l[0]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                  if(l[0]=="")
                  {
                    l[0]=l[1];
                    l[1]="";
                    // win();
                  }
                  else if(l[2]=="")
                  {
                    l[2]=l[1];
                    l[1]="";
                    // win();
                  }
                  else if(l[4]=="")
                  {
                    l[4]=l[1];
                    l[1]="";
                    // win();
                  }
                  win();
                  setState(() { });

                },
                  child: Container(
                    child: Text("${l[1]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                    if(l[1]=="")
                    {
                      l[1]=l[2];
                      l[2]="";
                      // win();
                    }
                    else if(l[5]=="")
                    {
                      l[5]=l[2];
                      l[2]="";
                      // win();
                    }
                    win();
                    setState(() { });

                  },
                  child: Container(
                    child: Text("${l[2]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
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
                InkWell(
                  onTap: () {
                    if(l[0]=="")
                    {
                      l[0]=l[3];
                      l[3]="";
                      // win();
                    }
                    else if(l[6]=="")
                    {
                      l[6]=l[3];
                      l[3]="";
                      // win();
                    }
                    else if(l[4]=="")
                    {
                      l[4]=l[3];
                      l[3]="";
                      // win();
                    }
                    win();
                    setState(() { });
                  },
                  child: Container(
                    child: Text("${l[3]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                  if(l[1]=="")
                  {
                    l[1]=l[4];
                    l[4]="";
                    // win();
                  }
                  else if(l[3]=="")
                  {
                    l[3]=l[4];
                    l[4]="";
                    // win();
                  }
                  else if(l[5]=="")
                  {
                    l[5]=l[4];
                    l[4]="";
                    // win();
                  }
                  else if(l[7]=="")
                  {
                    l[7]=l[4];
                    l[4]="";
                    // win();
                  }
                  win();
                  setState(() { });
                },
                  child: Container(child: Text("${l[4]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                  if(l[2]=="")
                  {
                    l[2]=l[5];
                    l[5]="";
                    // win();
                  }
                  else if(l[4]=="")
                  {
                    l[4]=l[5];
                    l[5]="";
                    // win();
                  }
                  else if(l[8]=="")
                  {
                    l[8]=l[5];
                    l[5]="";
                    // win();
                  }
                  win();
                  setState(() { });
                },
                  child: Container(child: Text("${l[5]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
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
                InkWell(onTap: () {
                  if(l[3]=="")
                  {
                    l[3]=l[6];
                    l[6]="";
                    // win();
                  }
                  else if(l[7]=="")
                  {
                    l[7]=l[6];
                    l[6]="";
                    // win();
                  }
                  win();
                  setState(() { });
                },
                  child: Container(child: Text("${l[6]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                  if(l[6]=="")
                  {
                    l[6]=l[7];
                    l[7]="";
                    // win();
                  }
                  else if(l[4]=="")
                  {
                    l[4]=l[7];
                    l[7]="";
                    // win();
                  }
                  else if(l[8]=="")
                  {
                    l[8]=l[7];
                    l[7]="";
                    // win();
                  }
                  win();
                  setState(() { });
                },
                  child: Container(child: Text("${l[7]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
                InkWell(onTap: () {
                  if(l[5]=="")
                  {
                    l[5]=l[8];
                    l[8]="";
                    // win();
                  }
                  else if(l[7]=="")
                  {
                    l[7]=l[8];
                    l[8]="";
                    // win();
                  }
                  win();
                  setState(() { });
                },
                  child: Container(child: Text("${l[8]}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.lightGreenAccent,),
                  ),
                ),
              ],
            ),

            Text("${msg}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () {
              msg="";
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return second();
              },),
              );
              setState(() { });
            }, child: Text("RESET")),
          ],
        ),
    );
  }
}
