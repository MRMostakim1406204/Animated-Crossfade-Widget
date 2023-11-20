import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Crossfade"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AnimatedCrossFade(
              firstChild: Container(
              height: 200,color: Colors.pink,
              child: Center(
               child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    check = false;
                  });
                }, 
                child: Text("Press",style: TextStyle(
                  fontSize: 20,color: Colors.black
                ),)),
              ),
            ), 
            secondChild: Center(
              child: Text("MR Mostakim",style: TextStyle(
                fontSize: 50,color: Colors.lightGreen,fontWeight: FontWeight.bold
              ),),
            ), crossFadeState: check?CrossFadeState.showFirst:CrossFadeState.showSecond,
             duration: Duration(seconds: 2)),
          )
        ],
      ),
    );
  }
}