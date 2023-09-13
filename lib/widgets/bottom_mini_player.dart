import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:marquee/marquee.dart';

class BottomMiniPlayer extends StatefulWidget {
  RealtimePlayingInfos realtimePlayingInfos;
  BottomMiniPlayer({
    Key? key,
    required this.realtimePlayingInfos,
  }) : super(key: key);

  @override
  State<BottomMiniPlayer> createState() => _BottomMiniPlayerState();
}

class _BottomMiniPlayerState extends State<BottomMiniPlayer> {
  AssetsAudioPlayer assetsAudioPlayer = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.width05,
        right: Dimensions.width05,
      ),
      width: Dimensions.deviceWidth,
      height: Dimensions.height100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Dimensions.height40,
        ),
        color: Colors.grey.shade800.withOpacity(0.95),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.height10),
            child: CircleAvatar(
              backgroundImage: (widget.realtimePlayingInfos != null)
                  ? AssetImage(widget.realtimePlayingInfos.current!.audio.audio
                      .metas.image!.path
                      .toString())
                  : null,
              backgroundColor: Colors.white12,
              radius: Dimensions.height40,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Marquee(
                    text: widget
                        .realtimePlayingInfos.current!.audio.audio.metas.title
                        .toString(),
                    style: TextStyle(
                      color: Colors.blueAccent.shade700,
                      fontSize: Dimensions.height18,
                      fontStyle: FontStyle.italic,
                    ),
                    velocity: 25,
                    blankSpace: 180,
                    startPadding: 140,
                    fadingEdgeStartFraction: 0.2,
                    fadingEdgeEndFraction: 0.2,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              icon: Icon(
                CupertinoIcons.backward_fill,
                color: Colors.white30,
                size: Dimensions.height24,
              ),
              onPressed: () {
                assetsAudioPlayer.previous();
              }),
          IconButton(
              icon: Icon(
                CupertinoIcons.play_arrow,
                color: Colors.white30,
                size: Dimensions.height24,
              ),
              onPressed: () {
                assetsAudioPlayer.playOrPause();
              }),
          IconButton(
              icon: Icon(
                CupertinoIcons.forward_fill,
                color: Colors.white30,
                size: Dimensions.height24,
              ),
              onPressed: () {
                assetsAudioPlayer.next();
              }),
          IconButton(
            icon: Icon(
              CupertinoIcons.music_albums_fill,
              color: Colors.white30,
              size: Dimensions.height24,
            ),
            onPressed: () {
              Get.toNamed("/");
            },
          ),
        ],
      ),
    );
  }
}
