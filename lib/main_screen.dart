import 'package:pertemuan4/home_page.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spotify"),
      ),
    body: ListView.builder(itemBuilder: (context,index) {
      final TopAlbum album = topAlbumList[index];
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: builder)  {
            return HomePage(username: album.name);
          }
          )
        },
      )
    }),
    );
  }
}
