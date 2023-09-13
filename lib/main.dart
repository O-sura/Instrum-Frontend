import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/screens/mainScreen.dart';
import 'package:instrum/screens/player_mainUI.dart';
import 'package:instrum/screens/playlist_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instrum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MainScreen()),
        GetPage(name: "/player-main", page: () => playerMainUI()),
        GetPage(name: "/playlist-info", page: () => PlaylistInfo()),
      ],
      home: MainScreen(),
    );
  }
}
