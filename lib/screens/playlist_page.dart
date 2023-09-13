import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/playlist_card.dart';
import 'package:instrum/widgets/popup_menu.dart';

class GetPlaylistPage extends StatefulWidget {
  const GetPlaylistPage({Key? key}) : super(key: key);

  @override
  State<GetPlaylistPage> createState() => _GetPlaylistPageState();
}

class _GetPlaylistPageState extends State<GetPlaylistPage> {
  @override
  Widget build(BuildContext context) {
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
            //CupertinoIcons.sort_down
            child: GeneratePopUpMenu(
              options: ["Name", "Date Created", "Recently Played"],
              icon: CupertinoIcons.sort_down,
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(
                    Dimensions.height10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return PlaylistCard();
                  }),
            ),
            flex: (Dimensions.deviceHeight < 600) ? 2 : 1,
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
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: (() {
                      Get.toNamed("/playlist-info");
                    }),
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
                      "Sweet & Calm",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: Dimensions.height16,
                      ),
                    ),
                    subtitle: Text(
                      "102 Tracks",
                      style: TextStyle(
                        color: Colors.orange.shade700,
                        fontSize: Dimensions.height14,
                      ),
                    ),
                    trailing: GeneratePopUpMenu(
                      options: ["Add", "Customize", "Delete"],
                      icon: Icons.more_vert_rounded,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
