import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch:Colors.cyan,
      ),
      title:"Increment & Decrement App",
      
      home:homepage(),
    );
  }
}
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int dataToChange = 0;
  void dataChange(){
    setState(() {
      dataToChange+=1;
    });
  }
  void dataReset(){
    setState(() {
      dataToChange=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child:Text(
          "Increment & Decrement  ",
          style:TextStyle(
            fontSize:30.0,
          )
          ),
          
        )
      ),
      body:Center(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "$dataToChange",
            style: TextStyle(
              fontSize:50.0,
              color:Colors.red,

            ),
          ),
          Padding(
            padding:EdgeInsets.all(20.0) ,
           
          child: ElevatedButton(
            
            onPressed: dataChange,
            child:Text(
              "Touch Me...",
              style: TextStyle(
                fontSize:40.0,
                height:2.0,
                
              ),
            )
          )
          
          ),
         Padding(
           padding:EdgeInsets.all(20.0),
          child:ElevatedButton(
            onPressed: dataReset,
            child: Text(
              "Reset",
              style: TextStyle(
                fontSize:40.0,
                height:2.0,

              ),
            ),
          )
           )
        ],
        )
      )
    );
  }
}
