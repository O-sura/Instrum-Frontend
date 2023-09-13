import 'package:flutter/material.dart';
import 'package:instrum/utils/dimensions.dart';

PreferredSizeWidget GetAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Icon(
      Icons.multitrack_audio_sharp,
      color: Colors.orange,
      size: Dimensions.height30,
    ),
    title: Text(
      "iNSTRUM",
      style: TextStyle(
          fontSize: Dimensions.height35,
          fontWeight: FontWeight.bold,
          color: Colors.white70,
          fontFamily: "Righteous"),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white70,
              size: Dimensions.height30,
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.white70,
              size: Dimensions.height30,
            )),
      )
    ],
  );
}
