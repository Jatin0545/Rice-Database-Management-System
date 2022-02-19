import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String pag1="x";
String pag2="x";
String pag3="x";
String pag4="x";


class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // late String page1="x";

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: "Jatin",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Management System"),
          backgroundColor: Colors.indigo,

        ),
        body: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Text("LOTT NO.",style: TextStyle(fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                child: Center(child: input_box(x: 1)),
              ),

              button(value: "next",page: 1,),


          ],
        ),
      ),

    );
  }
}


class input_box extends StatefulWidget {
  final int x;
  const input_box({Key? key,required this.x}) : super(key: key);

  @override
  _input_boxState createState() => _input_boxState(x);
}

class _input_boxState extends State<input_box> {
  final myController = TextEditingController();

  _input_boxState(int x);

  // int z = this.x;
  // late final String x;
  //
  // _input_boxState(this.x);

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

   set_value(){
    // setState(() {
      int x = widget.x;

    if(x==1){
      pag1 = myController.text;
    }
    else if(x==2){
      pag2 = myController.text;
    }
    else if(x==3){
      pag3 = myController.text;
    }
    else if(x==4){
      pag4 = myController.text;
    }
    // });
  //
  }
  // setState((){
  //   if(x==1){
  //   pag1 = myController.text;
  //   }
  //   else if(x==2){
  //   pag2 = myController.text;
  //   }
  //   else if(x==3){
  //   pag3 = myController.text;
  //   }
  //   else if(x==4){
  //   pag4 = myController.text;
  //   }
  // });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: TextField(
        controller: myController,
        onChanged: set_value(),
        decoration: InputDecoration(
          border: OutlineInputBorder(),

        ),

      ),
    );
  }
}


class button extends StatelessWidget {
  final value;
  final page;
  const button({Key? key,this.value,this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
        width: 100,
      child: RaisedButton(
        onPressed: (){
          if(page==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page2()),
            );
          }
          else if(page==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page3()),
            );
          }
          else if(page==3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page4()),
            );

          }
          else if(page==4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page5()),
            );

          }
        },
        child: Text(value,style: TextStyle(color: Colors.white),),
        color: Colors.indigo,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),

      ),
    );
  }
}

class page2 extends StatefulWidget {
  page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  // late String pag2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jatin",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Management System"),
          backgroundColor: Colors.indigo,

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Text("No. of Bags",style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 20),
              child: Center(child: input_box(x: 2)),
            ),

            button(value: "next",page: 2,),


          ],
        ),
      ),

    );
  }
}


class page3 extends StatefulWidget {
  page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  // late String pag3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jatin",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Management System"),
          backgroundColor: Colors.indigo,

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Text("Vehicle Registration No.",style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 20),
              child: Center(child: input_box(x: 3)),
            ),

            button(value: "next",page: 3,),


          ],
        ),
      ),

    );
  }
}



class page4 extends StatefulWidget {
  page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  // late String pag4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jatin",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Management System"),
          backgroundColor: Colors.indigo,

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Text("Warehouse.",style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 20),
              child: Center(child: input_box(x: 4)),
            ),

            button(value: "next",page: 4,),


          ],
        ),
      ),

    );
  }
}

class page5 extends StatefulWidget {
  // final String p1;
  // final String p2;
  // final String p3;
  // final String p4;

  const page5({Key? key}) : super(key: key);

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {

  void stateUpdate(){
    setState(){};
    print("refresh done");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          color: Colors.lightGreen,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    // color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Text("GATEPASS",style: TextStyle(fontSize: 40,color: Colors.deepPurple,backgroundColor: Colors.blueGrey),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Text("Company Name : BA Foods",style: TextStyle(fontSize: 20),),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Text("Lott no : ",style: TextStyle(fontSize: 20),),
                      ),
                      Text(pag1,style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Text("No. of Bags : ",style: TextStyle(fontSize: 20),),
                      ),
                      Text(pag2,style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Text("Vehicle Registration :",style: TextStyle(fontSize: 20),),
                      ),
                      Text(pag3,style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Text("Warehouse : ",style: TextStyle(fontSize: 20),),
                      ),
                      Text(pag4,style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text("Save",style: TextStyle(color: Colors.white),),
                          color: Colors.indigo,
                        ),
                      ),
                      RaisedButton(
                        onPressed: (){},
                        child: Text("Print",style: TextStyle(color: Colors.white)),
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
