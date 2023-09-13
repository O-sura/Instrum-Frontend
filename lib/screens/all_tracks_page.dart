import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/popup_menu.dart';

Widget GetAllTrackslistPage() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Dimensions.height30),
        topRight: Radius.circular(Dimensions.height30),
      ),
      color: Colors.grey.shade900,
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: Row(
            children: [
              GeneratePopUpMenu(
                options: ["Name", "Date Added", "Artist"],
                icon: CupertinoIcons.sort_down,
              ),
              Expanded(
                child: SizedBox(
                  width: Dimensions.width10,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.shuffle_medium,
                    color: Colors.white24,
                    size: Dimensions.height24,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
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
                    "Add",
                    "Share",
                    "Delete",
                    "Track Details",
                    "Albums"
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
