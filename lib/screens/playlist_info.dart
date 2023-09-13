import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/bigtext.dart';
import 'package:instrum/widgets/smalltext.dart';

class PlaylistInfo extends StatelessWidget {
  const PlaylistInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(
              width: Dimensions.deviceWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: Dimensions.width10,
                      top: Dimensions.height40,
                    ),
                    child: MaterialButton(
                      color: Colors.black12,
                      shape: const CircleBorder(),
                      onPressed: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back,
                          size: Dimensions.height32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox(height: Dimensions.height10)),
                  Container(
                    margin: EdgeInsets.only(
                      left: Dimensions.width30,
                      bottom: Dimensions.height20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText("Coming Up for Air", Dimensions.height32),
                            SmallText("Created by You", Dimensions.height20),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            SmallText("3 hr 54 min   .   69 Songs",
                                Dimensions.height16),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(width: Dimensions.width10),
                        ),
                        MaterialButton(
                          color: Colors.white12,
                          shape: const CircleBorder(),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.play_arrow,
                              size: Dimensions.height38,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/img/concert.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return PlaylistSong(index);
                },
                itemCount: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget PlaylistSong(int index) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.width20,
        right: Dimensions.width20,
        bottom: Dimensions.height10,
      ),
      width: Dimensions.deviceWidth,
      height: Dimensions.height120,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(
          Dimensions.height20,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: Dimensions.width10,
            ),
            width: Dimensions.width100,
            height: Dimensions.height100,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(
                Dimensions.height20,
              ),
            ),
          ),
          SizedBox(
            width: Dimensions.width20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText("No Promises", Dimensions.height18),
              SmallText("Shayne Ward", Dimensions.height14),
              SizedBox(height: 20),
              SmallText("Duration: 03:43", Dimensions.height12),
            ],
          ),
          Expanded(
              child: SizedBox(
            width: Dimensions.width20,
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz_outlined,
              color: Colors.white,
              size: Dimensions.height26,
            ),
          ),
        ],
      ),
    );
  }
}
