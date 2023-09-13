import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrum/screens/all_tracks_page.dart';
import 'package:instrum/screens/fav_page.dart';
import 'package:instrum/screens/get_albumns.dart';
import 'package:instrum/screens/get_artists_page.dart';
import 'package:instrum/screens/playlist_page.dart';
import 'package:instrum/utils/dimensions.dart';
import 'package:instrum/widgets/appbar.dart';
import 'package:instrum/widgets/bottom_mini_player.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  void createPlayList() {
    assetsAudioPlayer.open(
      Audio(
        "assets/Dangerous - Kevin MacLeod.mp3.mp3",
        metas: Metas(
          title: "Dangerous",
          artist: "Osura Viduranga",
          image: MetasImage(
            path: "assets/img/swift.jpg",
            type: ImageType.asset,
          ),
        ),
      ),
      autoStart: false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createPlayList();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    assetsAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 5, vsync: this, initialIndex: 2);
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: GetAppBar(),
      body: Column(
        children: [
          TabBar(
            padding: EdgeInsets.only(
              top: Dimensions.height40,
            ),
            controller: _tabController,
            tabs: const [
              Tab(text: "Favourites"),
              Tab(text: "Playlists"),
              Tab(text: "Tracks"),
              Tab(text: "Albums"),
              Tab(text: "Artists"),
            ],
            isScrollable: true,
            indicatorColor: Colors.transparent,
            labelColor: Colors.orange,
            labelStyle: TextStyle(
              fontSize: Dimensions.height22,
              fontStyle: FontStyle.italic,
            ),
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: Dimensions.height16,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: Dimensions.height30,
          ),
          Expanded(
            child: Stack(
              children: [
                TabBarView(
                  controller: _tabController,
                  children: [
                    GetFavouritePage(),
                    GetPlaylistPage(),
                    GetAllTrackslistPage(),
                    GetAlbumsPage(),
                    getArtistsPage(),
                  ],
                ),
                Positioned(
                  bottom: Dimensions.height05,
                  child: GestureDetector(
                    onVerticalDragEnd: (details) {
                      Get.toNamed("/player-main");
                    },
                    child: Container(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
