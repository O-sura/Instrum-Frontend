import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/popup_menu.dart';

Widget GetAlbumsPage() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Dimensions.height30),
        topRight: Radius.circular(Dimensions.height30),
      ),
      color: Colors.grey.shade900,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: GeneratePopUpMenu(
            options: ["Name", "Date Added"],
            icon: CupertinoIcons.sort_down,
          ),
        ),
        Expanded(
          child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: Dimensions.width10,
                mainAxisSpacing: Dimensions.height20,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: Dimensions.width200,
                  height: Dimensions.height200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(
                      Dimensions.height15,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: Dimensions.width180,
                        height: Dimensions.height180,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(
                            Dimensions.height15,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/img/album_cover.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height05,
                      ),
                      Text(
                        "Album Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Prompt",
                          fontSize: Dimensions.height18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "11 Tracks",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Prompt",
                          fontSize: Dimensions.height14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    ),
  );
}
