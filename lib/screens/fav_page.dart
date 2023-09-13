import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/popup_menu.dart';

Widget GetFavouritePage() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Dimensions.height30),
        topRight: Radius.circular(Dimensions.height30),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.music_note,
              size: Dimensions.height100,
              color: Colors.grey.shade800,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height20, left: Dimensions.width20),
              child: Text(
                "Find You\nTaste",
                style: TextStyle(
                  color: Colors.orange.shade900,
                  fontSize: Dimensions.height40,
                  fontFamily: "Prompt",
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: GeneratePopUpMenu(
            options: ["Name", "Date Added"],
            icon: CupertinoIcons.sort_down,
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.white12,
              thickness: 2,
              indent: 30,
              endIndent: 30,
              height: Dimensions.height05,
            ),
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.only(
                  bottom: Dimensions.height10,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                leading: Container(
                  width: Dimensions.width80,
                  height: Dimensions.height80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Dimensions.height05,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img/playlist_cover.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  "On the Floor ft. Pitbull",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: Dimensions.height16,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Jennifer Lopez",
                      style: TextStyle(
                        color: Colors.orange.shade700,
                        fontSize: Dimensions.height14,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "Duration: 03.21",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: Dimensions.height14,
                      ),
                    ),
                  ],
                ),
                trailing: GeneratePopUpMenu(
                  options: [
                    "Remove",
                    "Share",
                    "Track Details",
                    "Album and Tracks"
                  ],
                  icon: Icons.more_vert_rounded,
                ),
              );
            },
            itemCount: 20,
          ),
        )
      ],
    ),
  );
}
