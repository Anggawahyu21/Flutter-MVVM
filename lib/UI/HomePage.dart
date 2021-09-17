import 'package:flutter/material.dart';
import 'package:latihan_1/UI/ExplorerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: new Column(children: <Widget>[
      Image.asset("assets/appimages/pentakillpost.jpg"),
      Container(
        color: Colors.black,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pentakill : Lost Chapter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
             ),
             Text(
               'League of Legends',
                style: TextStyle(
                  color: Colors.white,
             ),
            ),
          ],
        ), 
      ),
    Icon(
      Icons.star,
      color: Colors.red[500],
    ),
    Text('999', style: TextStyle(
      color: Colors.white,)),
    ],
  ),
),

Container(
  padding: EdgeInsets.only(top: 10, bottom: 10),
  decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor)),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.phone, color: Colors.black),
          Container(
           margin: const EdgeInsets.only(top: 8),
           child: Text("CALL", 
           style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400,
             color: Colors.black,
           ),
        ), 
      )
    ],
  ),
  Column(
    mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.near_me, color: Colors.black),
          Container(
           margin: const EdgeInsets.only(top: 8),
           child: Text("ROUTE", style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400,
             color: Colors.black,
           ),
        ), 
      )
    ],
  ),
  Column(
    mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.share, color: Colors.black),
          Container(
           margin: const EdgeInsets.only(top: 8),
           child: Text("SHARE", style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400,
             color: Colors.black,
           ),
        ), 
      )
    ],
  ),
],
),
),
Container(
  padding: EdgeInsets.all(10),
  child: Text(
    'Pentakill pertama kali dibentuk dan melakoni debutnya '
    'pada tahun 2014 lewat album pertamanya yang berjudul '
    '"Smite and Ignite" dengan personil awal berjumlah lima orang.',
    softWrap: true,
  ),
)],),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (i){
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                builder: (BuildContext context)=>HomePage()
                ));
              break;
            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                builder: (BuildContext context)=>ExplorerPage()
                ));
              break;   
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Explorer")),
        ],
      ),
    );
  }
}