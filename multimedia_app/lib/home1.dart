import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Container(
              height: 200,
              width: 500,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20),
              child: Text(
                'Audio',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/raw/master/multimedia_app/audio_container.jpg',
                  ),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/audio');
            },
          ),
          FlatButton(
            child: Container(
              height: 200,
              width: 500,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                "Video",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/raw/master/multimedia_app/video.png',
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/video');
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/raw/master/multimedia_app/home_background2.png',
          ),
        ),
      ),
    );

    var myhome = Scaffold(
      appBar: AppBar(
        title: Text(
          'Media Player',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.red,
        leading: Icon(Icons.library_music),
      ),
      body: mybody,
    );

    return myhome;
  }
}
