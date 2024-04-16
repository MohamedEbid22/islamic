import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import '../../../core/class/PositionData.dart';

class RadioFM extends StatefulWidget {
  const RadioFM({super.key});

  @override
  State<RadioFM> createState() => _RadioFMState();
}

class _RadioFMState extends State<RadioFM> {
  late AudioPlayer _audioPlayer;
  bool? _isConnected;
  Stream<PositionData> get _positionDataStream =>
      rxdart.Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) {
          return PositionData(
            position: position,
            bufferedPosition: bufferedPosition,
            duration: duration ?? Duration.zero,
          );
        },
      );

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initAudioPlayer();
  }

  Future<void> _initAudioPlayer() async {
    try {
      setState(() {
        _isConnected = null;
      });

      await _audioPlayer.setUrl(
          "https://n0e.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABjrKmnHkAdUGtf2gHsayqKA");
      await _audioPlayer.load();

      setState(() {
        _isConnected = true;
      });
    } catch (e) {
      setState(() {
        _isConnected = false;
      });
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [secondaryColor, primaryColor],
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "الإذاعة",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 15,
              width: double.infinity,
              color: primaryColor,
              child: Container(
                height: 15,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      50.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _isConnected == null
                  ? Center(
                      child: Lottie.asset("asset/lottie/loading.json",
                          height: height * .2),
                    )
                  : _isConnected!
                      ? ListView(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.08),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.1,
                                      ),
                                      child: Image.asset("asset/images/fm.png"),
                                    ),
                                    StreamBuilder<PositionData>(
                                      stream: _positionDataStream,
                                      builder: (context, snapshot) {
                                        final PositionData = snapshot.data;

                                        return ProgressBar(
                                          barHeight: 6,
                                          baseBarColor: const Color.fromARGB(
                                              255, 148, 148, 148),
                                          bufferedBarColor:
                                              const Color.fromARGB(
                                                  255, 192, 192, 192),
                                          progressBarColor: s1color,
                                          thumbColor: s1color,
                                          timeLabelTextStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 53, 53, 53),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          progress: PositionData?.position ??
                                              Duration.zero,
                                          buffered:
                                              PositionData?.bufferedPosition ??
                                                  Duration.zero,
                                          total: PositionData?.duration ??
                                              Duration.zero,
                                          onSeek: _audioPlayer.seek,
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.05,
                                      ),
                                      child: Play(audioPlayer: _audioPlayer),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : const Center(
                          child: Text('No Internet Connection'),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

class Play extends StatelessWidget {
  final AudioPlayer audioPlayer;
  const Play({Key? key, required this.audioPlayer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: IconButton(
            onPressed: () {
              final newPosition =
                  audioPlayer.position + const Duration(seconds: 10);
              audioPlayer.seek(newPosition);
            },
            color: primaryColor,
            icon: Icon(
              Icons.replay_10_outlined,
              size: height * .04,
            ),
          ),
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;

            if (!(playing ?? false)) {
              return Container(
                width: height * .07,
                height: height * .07,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 159, 159),
                    borderRadius: BorderRadius.circular(360)),
                child: IconButton(
                  onPressed: audioPlayer.play,
                  iconSize: height * .04,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  icon: const Icon(Icons.play_arrow_rounded),
                ),
              );
            } else if (processingState != null &&
                processingState != ProcessingState.completed) {
              return Container(
                width: height * .07,
                height: height * .07,
                decoration: BoxDecoration(
                    color: s1color, borderRadius: BorderRadius.circular(360)),
                child: IconButton(
                  onPressed: audioPlayer.pause,
                  iconSize: height * .04,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  icon: const Icon(Icons.pause_rounded),
                ),
              );
            }

            return Icon(
              Icons.play_arrow_rounded,
              size: height * .07,
              color: const Color.fromARGB(255, 255, 255, 255),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: IconButton(
            onPressed: () {
              final newPosition =
                  audioPlayer.position - const Duration(seconds: 10);
              audioPlayer.seek(newPosition);
            },
            color: primaryColor,
            icon: Icon(
              Icons.forward_10_outlined,
              size: height * .04,
            ),
          ),
        ),
      ],
    );
  }
}
