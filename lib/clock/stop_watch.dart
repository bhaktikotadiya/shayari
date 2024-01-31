import 'package:shayari/clock/stop_watch1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()
{
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,home: clock(),
    ));
}
class clock extends StatefulWidget {
  static SharedPreferences? prefs;
  // const clock({super.key});

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {

  int a = 0;
  static int c = 0;
  int x = 0;
  int s = 0;
  int m = 0;
  int h = 0;
  int s1 = 0;
  int m1 = 0;
  int h1 = 0;
  // int s2 = 0;
  // int m2 = 0;
  // int h2 = 0;
  int min = 0;
  int hour = 0;
  int min1 = 0;
  int hour1 = 0;
  List l = ["START", "STOP",""];
  List l1 = [];
  bool stop = false;
  bool start = false;
  bool reset = false;
  Stopwatch stopwatch = new Stopwatch();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  Stream get() async*
  {
    int i=1;
    // int j=1;
    if(start==true)
    {
        while(true)
        {
          a = i;
          // i++;
          if(start==true)
          {
              // j=i;
              i++;
          }
          await Future.delayed(Duration(seconds: 1));
          yield a;
        }
    }
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STOP WATCH",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "eleven",color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          color: Colors.white70,
          child: Column(children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.teal,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return timer();
                          },));
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.orange,
                        margin: EdgeInsets.all(20),
                        child: Text("TIMER",style: TextStyle(fontFamily: "eleven",fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(20),
                      child: Text("STOPWATCH",style: TextStyle(fontFamily: "eleven",fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],),
              ),
            ),
            Expanded(flex: 3,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.red,
                child: StreamBuilder(
                  initialData: 0,
                  stream: get(),
                  builder: (context, snapshot) {
                      print(snapshot.connectionState);
                      print(snapshot.data);
                      s=snapshot.data;
                      // s=a;
                      int j=0;
                      if(s>=60)
                      {
                        min=s~/60;
                        s=s%60;
                      }
                      m=min;
                      if(m>=60)
                      {
                        hour=m~/60;
                        m=m%60;
                      }
                      h=hour;
                      if(start == true)
                      {
                          if(snapshot.connectionState == ConnectionState.active || snapshot.connectionState == ConnectionState.done)
                          {
                            print("hello");
                          }
                          print("start : $s");
                          if(s1!=0)
                          {
                            s1++;
                            h=h1;
                            m=m1;
                            s=s1;
                            return Center(child: Text("start1 $h : $m : $s",style: TextStyle(fontSize: 50,fontFamily: "two"),),);
                          }
                          return Center(child: Text("start $h : $m : $s",style: TextStyle(fontSize: 50,fontFamily: "two"),),);
                      }
                      else if(stop==true)
                      {
                          if(start==false)
                          {
                              s=snapshot.data;
                              if(s1==0)
                              {
                                s++;
                                h1=h;
                                m1=m;
                                s1=s;
                                return Center(child: Text("stop1 $h1 : $m1 : $s1",style: TextStyle(fontSize: 50,fontFamily: "two"),),);
                              }
                              return Center(child: Text("stop  $h1 : $m1 : $s1",style: TextStyle(fontSize: 50,fontFamily: "two")),);
                          }
                      }
                      if(reset==true)
                      {
                        h=0;
                        m=0;
                        s=0;
                        h1=0;
                        m1=0;
                        s1=0;
                        return Center(child: Text("reset 0 : 0 : 0",style: TextStyle(fontSize: 50,fontFamily: "two")),);
                      }
                      else
                      {
                        // return Center(child: CircularProgressIndicator(),);
                        // return Center(child: CupertinoActivityIndicator(),);
                         return Center(child: Text("default 0 : 0 : 0",style: TextStyle(fontSize: 50,fontFamily: "two")),);
                      }
                  },),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.teal,
                child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                          // stop=true;
                          if(start==false)
                          {
                                start=true;
                          }
                          else if(start==true)
                          {
                              start=false;
                              if(start==false)
                                {
                                    stop=true;
                                }
                          }
                          else if(stop==true)
                          {
                              start=false;
                          }

                          setState(() { });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.orange,
                        margin: EdgeInsets.all(20),
                        child:  (start==false)?Text("${l[0]}",style: TextStyle(fontFamily: "eleven",fontSize: 30,fontWeight: FontWeight.bold)):
                                (start==true)?Text("${l[1]}",style: TextStyle(fontFamily: "eleven",fontSize: 30,fontWeight: FontWeight.bold))
                                            :Text("${l[0]}",style: TextStyle(fontFamily: "eleven",fontSize: 30,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // stopwatch.stop();
                        // stopwatch.reset();
                        start=false;
                        stop=false;
                        if(reset==false)
                        {
                              reset=true;
                              start=false;
                              stop=false;
                        }
                        setState(() { });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blueAccent,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        child: Text("RESET",style: TextStyle(fontFamily: "eleven",fontSize: 30,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],),
              ),
            ),
          ]),
        )
      )
    );
  }
}
