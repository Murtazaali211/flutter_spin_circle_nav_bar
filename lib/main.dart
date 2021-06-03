import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Spin Circle')
      ),
      body: SpinCircleBottomBarHolder(        
        bottomNavigationBar: SCBottomBarDetails(          
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black45,),
          activeIconTheme: IconThemeData(color: Colors.orange[900]),
          titleStyle: TextStyle(color: Colors.black45, fontSize: 12),
          activeTitleStyle: TextStyle(color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold),
          circleColors: [Colors.white, Colors.deepOrange, Colors.redAccent],
          actionButtonDetails: SCActionButtonDetails(color: Colors.cyanAccent, icon: Icon(Icons.expand_less), elevation: 0),          
          bnbHeight: 80,
          backgroundColor: Colors.white,
          items: <SCBottomBarItem>[
            SCBottomBarItem(icon: Icons.verified_user, onPressed: (){}, title: "Users" ),
            SCBottomBarItem(icon: Icons.supervised_user_circle, onPressed: (){}, title: "Details" ),
            SCBottomBarItem(icon: Icons.notifications, onPressed: (){}, title: "Notifications" ),
            SCBottomBarItem(icon: Icons.details, onPressed: (){}, title: "New Data" ),
          ],
          circleItems: <SCItem>[
            SCItem(icon: Icon(Icons.add), onPressed: (){}),
            SCItem(icon: Icon(Icons.print), onPressed: (){}),
            SCItem(icon: Icon(Icons.map_rounded), onPressed: (){}),
            SCItem(icon: Icon(Icons.mail_sharp), onPressed: (){}),
          ]
        ),                  
        child: Container(        
        color: Colors.greenAccent.withAlpha(100),
        child: Center(child: Text('Spin Circle Bottom Navigation Bar', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
      )
    );
  }
  
}
