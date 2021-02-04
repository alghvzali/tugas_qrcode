import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
      ),
      body:
      Center(child: Column(mainAxisAlignment: MainAxisAlignment.center ,
        children: [CircleAvatar(backgroundColor:Colors.transparent,backgroundImage: AssetImage("assets/profil.jpg"), radius: 100,),
          SizedBox(height: 20.0,),
          Text("Fariz Muhammad Al-Ghazali", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)
            ,),
          Text("NIM : 2018302009", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)
            ,),
          SizedBox(height: 40.0,),
          InkWell(
            child: Text("Kunjungi Website", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
            onTap: () async {
              if (await canLaunch("https://samuderastudio.ga")) {
                await launch("https://samuderastudio.ga");
              }
            },
          )
          //Icon(Icons.ac_unit, size: 50, color: Colors.purple,)
          ],
      ),
      ),
    );
  }
}
