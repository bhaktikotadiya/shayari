import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,home: timer(),
    ));
}
class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {

  int a = 0;
  static int c = 0;
  int x = 0;
  int b = 0;
  int s = 60;
  int m = 5;
  int h = 2;
  int s1 = 0;
  int m1 = 0;
  int h1 = 0;
  int t=0;
  int i=0;
  int time=0;
  int min = 0;
  int hour = 0;
  List l = ["START", "STOP",""];
  List l1 = [];
  bool stop = false;
  bool start = false;
  bool reset = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  Stream get() async*
  {
    t=(h*3600)+(m*60)+s;
    time=t;
    if(start=true)
      {
        i=time;
        while(i>=0)
          {
              // m1=i~/60;
              // s1=i-(m1*60);
              // h1=m1~/60;
              i--;
              await Future.delayed(Duration(seconds: 1));
              yield i;
          }
      }
    else if(stop==true)
      {
        time=i;
        // start=false;
        await Future.delayed(Duration(seconds: 1));
        yield time;
      }
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TIMER"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            color: Colors.amber,
            child: Column(children: [
              Expanded(flex: 4,
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
                      // t=(h*3600)+(m*60)+s;
                      // time=t;

                      // if(start==true)
                      // {
                      //   b=time;
                      //   while(b>=0 && b<=60)
                      //   {
                      //     m=b~/60;
                      //     s=b-(m*60);
                      //     h=m~/60;
                      //     m=m-(h*60);
                      //     // await Future.delayed(Duration(seconds: 1));
                      //     b--;
                      //     // yield b;
                      //   }
                      //   if(b<60)
                      //   {
                      //     start=true;
                      //   }
                      // }
                      // else if(stop==true)
                      // {
                      //   time=b;
                      //   // await Future.delayed(Duration(seconds: 1));
                      //   // yield b;
                      // }
                      // else if(reset==true)
                      // {
                      //   time=t;
                      //   // await Future.delayed(Duration(seconds: 1));
                      //   // yield b;
                      // }
                      if(start == true)
                      {
                        if(snapshot.connectionState == ConnectionState.active || snapshot.connectionState == ConnectionState.done)
                        {
                          print("hello : $i");
                        }

                        m1=i~/60;
                        print("m1 : $m1");
                        s1=i-(m1*60);
                        h1=m1~/60;
                        print("start : $s");
                        // b=time;
                        return Center(child: Text("start $h1 : $m1 : $s1",style: TextStyle(fontSize: 50,fontFamily: "two"),),);
                      }
                      else if(stop==true)
                      {
                        start=false;
                        if(start==false)
                        {
                          return Center(child: Text("stop  $h1 : $m1 : $s1",style: TextStyle(fontSize: 50,fontFamily: "two")),);
                        }
                      }
                      if(reset==true)
                      {
                        // time=t;
                        return Center(child: Text("reset $h1 : $m1 : $s1",style: TextStyle(fontSize: 50,fontFamily: "two")),);
                      }
                      else
                      {
                        start=false;
                        stop=false;
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
                          // start=true;
                          if(start==false)
                          {
                            start=true;
                          }
                          if(start==true)
                          {
                            start=false;
                            if(start==false)
                            {
                              stop=true;
                            }
                          }
                          if(stop==true)
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
            ],)
          ),
      ),
    );
  }
}
