import 'package:flutter/material.dart';
import 'package:iqplayer/iqplayer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class video_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade500,
                ),
              ),
              child: FlatButton(
                child: Text(
                  'Open Video 1',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => IQScreen(
                        title: 'Video Player',
                        description: 'Simple video as a demo video',
                        videoPlayerController: VideoPlayerController.network(
                          'https://d11b76aq44vj33.cloudfront.net/media/720/video/5def7824adbbc.mp4',
                        ),
                        subtitleProvider: SubtitleProvider.fromNetwork(
                            'https://duoidi6ujfbv.cloudfront.net/media/0/subtitles/5675420c9d9a3.vtt'),
                        iqTheme: IQTheme(
                          loadingProgress: SpinKitCircle(
                            color: Colors.red,
                          ),
                          playButtonColor: Colors.transparent,
                          videoPlayedColor: Colors.indigo,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 250,
              margin: EdgeInsets.all(10),
              child: FlatButton(
                child: Text(
                  'Open Video 2',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => IQScreen(
                        title: 'Video Player',
                        description: 'Simple video as a demo video',
                        videoPlayerController: VideoPlayerController.network(
                          'https://d11b76aq44vj33.cloudfront.net/media/720/video/5def7824adbbc.mp4',
                        ),
                        subtitleProvider: SubtitleProvider.fromNetwork(
                            'https://duoidi6ujfbv.cloudfront.net/media/0/subtitles/5675420c9d9a3.vtt'),
                        iqTheme: IQTheme(
                          loadingProgress: SpinKitCircle(
                            color: Colors.red,
                          ),
                          playButtonColor: Colors.transparent,
                          videoPlayedColor: Colors.indigo,
                        ),
                      ),
                    ),
                  );
                },
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
    var myvideo = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('VIDEO'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          child: mybody,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://github.com/SuhaniArora/Flutter_Mutlimedia_App/raw/master/multimedia_app/home_background2.png',
              ),
            ),
          ),
        ),
      ),
    );
    return myvideo;
  }
}
