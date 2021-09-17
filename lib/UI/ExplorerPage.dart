import 'package:flutter/material.dart';
import 'package:latihan_1/Models/explorer.dart';
import 'package:latihan_1/Services/apiStatic.dart';
import 'package:latihan_1/UI/DetailExplorer.dart';
import 'package:latihan_1/UI/HomePage.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({ Key? key }) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explorer"),
      ),
      body: FutureBuilder<List<Explorer>>(
        future: ApiStatic.getExplorer(),
        builder: (context, snapshot){
          if (snapshot.connectionState==ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            List<Explorer> listExplorer=snapshot.data!;
            return Container(
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: listExplorer.length,
                itemBuilder: (BuildContext context, int index)=>Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context)=>DetailExplorerPage(explorer: listExplorer[index],)
                        ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.lightGreenAccent)
                        ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.people),
                              Column(
                                children: [
                                  Text(listExplorer[index].nama),
                                  Text(listExplorer[index].telp, style: TextStyle(fontSize: 8),),
                                ],
                              )
                            ],
                          )
                      ),
                    )
                  ]
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
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