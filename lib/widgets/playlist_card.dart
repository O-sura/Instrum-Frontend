import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/utils/dimensions.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/playlist-info");
      },
      child: Container(
        margin: EdgeInsets.all(Dimensions.height10),
        width: Dimensions.width200,
        height: Dimensions.height150,
        decoration: BoxDecoration(
          color: Colors.orange.shade900.withOpacity(0.2),
          borderRadius: BorderRadius.circular(Dimensions.height20),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: Dimensions.height10),
              width: Dimensions.width180,
              height: Dimensions.height180,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(Dimensions.height20),
                image: DecorationImage(
                  image: AssetImage("assets/img/album.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Text(
              "Favourites",
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: Dimensions.height24,
                  fontFamily: "Prompt"),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Text(
              "32 Tracks",
              style: TextStyle(
                color: Colors.white38,
                fontFamily: "Prompt",
                fontSize: Dimensions.height16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
