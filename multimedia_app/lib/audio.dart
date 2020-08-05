import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

var audio = AudioCache();
AudioPlayer audioPlayer = AudioPlayer();

class audio_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 120,
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 25,
                        right: 5,
                      ),
                      child: RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Text('Play'),
                            Icon(Icons.play_arrow),
                          ],
                        ),
                        onPressed: () {
                          audioPlayer.play(
                            'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/blob/master/multimedia_app/audio.mp3?raw=true',
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25, right: 5),
                      child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Text('Pause'),
                              Icon(Icons.pause),
                            ],
                          ),
                          onPressed: () {
                            audioPlayer.pause();
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Text('Stop'),
                              Icon(Icons.stop),
                            ],
                          ),
                          onPressed: () {
                            audioPlayer.stop();
                          }),
                    ),
                  ],
                ),
                Text(
                  'Audio1',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.amber.shade700,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 120,
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 25,
                        right: 5,
                      ),
                      child: RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Text('Play'),
                            Icon(Icons.play_arrow),
                          ],
                        ),
                        onPressed: () {
                          audioPlayer.play(
                            'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/blob/master/multimedia_app/audio.mp3?raw=true',
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25, right: 5),
                      child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Text('Pause'),
                              Icon(Icons.pause),
                            ],
                          ),
                          onPressed: () {
                            audioPlayer.pause();
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Text('Stop'),
                              Icon(Icons.stop),
                            ],
                          ),
                          onPressed: () {
                            audioPlayer.stop();
                          }),
                    ),
                  ],
                ),
                Text(
                  'Audio2',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.amber.shade700,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
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

    var myaudio = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('AUDIO'),
          backgroundColor: Colors.red,
        ),
        body: mybody,
      ),
    );
    return myaudio;
  }
}
