import 'package:flutter/material.dart';
import 'package:latihan_1/Models/explorer.dart';

class DetailExplorerPage extends StatefulWidget {
  DetailExplorerPage({required this.explorer});
  final Explorer explorer;

  @override
  _DetailExplorerPageState createState() => _DetailExplorerPageState();
}

class _DetailExplorerPageState extends State<DetailExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.explorer.nama),
        ),
      body: Container(width: double.infinity,
      child: ListView(
        children: [
          Icon(Icons.people),
          Container(
            padding: EdgeInsets.all(5),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff3164bd), Color(0xff295cb5)],
              ),
            ),
            child: Text(widget.explorer.telp, style: TextStyle(color: Colors.white),),
          ),
          Container(
           padding: EdgeInsets.all(10),
           color: Colors.lightBlue,
           width: double.infinity,
           height: double.maxFinite,
           child: new Text(widget.explorer.foto),
            )
          ]
        ),
      )
    );
  }
}