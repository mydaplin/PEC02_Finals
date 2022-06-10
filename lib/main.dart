import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myfunction.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfront(),
  ));
}
class Myfront extends StatelessWidget {
  const Myfront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlueAccent, Colors.pinkAccent])),
        child: Center(
          child: Column(
              children:[
                SizedBox(height:20),
                Text('          Welcome!\n                 \n\nHigh-Low Card Game',
                  style: TextStyle(
                    fontSize:50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                SizedBox(height: 200),
                RaisedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FunctionDart())
                  );
                },
                  child: Text('Start Game',
                      style: TextStyle(
                        fontSize:20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      )
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}