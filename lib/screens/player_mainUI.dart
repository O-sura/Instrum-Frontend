import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/bigtext.dart';
import 'package:instrum/widgets/smalltext.dart';

class playerMainUI extends StatefulWidget {
  const playerMainUI({Key? key}) : super(key: key);

  @override
  State<playerMainUI> createState() => _playerMainUIState();
}

class _playerMainUIState extends State<playerMainUI> {
  bool isPlaying = true;
  void changePlayingState() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: Dimensions.height24,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Now Playing",
          style: TextStyle(
            color: Colors.black,
            fontSize: Dimensions.height16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
              size: Dimensions.height24,
            ),
          ),
        ],
      ),
      body: Container(
        height: Dimensions.deviceHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/cover.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
              child: Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimensions.height100,
                ),
                Container(
                  width: Dimensions.width330,
                  height: Dimensions.height330,
                  margin: EdgeInsets.only(left: Dimensions.width75),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(
                      image: AssetImage("assets/img/cover.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: Dimensions.height10,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText("Havana", Dimensions.height26),
                          SizedBox(
                            height: Dimensions.height05,
                          ),
                          SmallText("Camilia Cabello ft.Young Thug",
                              Dimensions.height16),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: Dimensions.height28,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: Dimensions.height10,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.music_note_list,
                          color: Colors.white70,
                          size: Dimensions.height24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.volume_down,
                          color: Colors.white70,
                          size: Dimensions.height24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                  ),
                  child: ProgressBar(
                    progress: Duration(
                      minutes: 01,
                      seconds: 44,
                    ),
                    total: Duration(
                      minutes: 03,
                      seconds: 44,
                    ),
                    progressBarColor: Colors.red,
                    buffered: Duration(
                      minutes: 03,
                      seconds: 44,
                    ),
                    baseBarColor: Colors.white.withOpacity(0.24),
                    bufferedBarColor: Colors.black38,
                    thumbColor: Colors.white,
                    barHeight: Dimensions.height13,
                    thumbRadius: Dimensions.height05,
                    timeLabelPadding: Dimensions.height20,
                    timeLabelTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.height14,
                    ),
                    onSeek: (duration) {},
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: Dimensions.height10,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.height40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.shuffle,
                          color: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.backward_end_alt,
                          color: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          (isPlaying)
                              ? CupertinoIcons.play_arrow_solid
                              : CupertinoIcons.pause_fill,
                          size: Dimensions.height38,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.forward_end_alt,
                          color: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.repeat,
                          color: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
