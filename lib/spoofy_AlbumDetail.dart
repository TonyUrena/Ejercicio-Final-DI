import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spoofy/spoofy_AlbumDetailSong.dart';
import 'package:spoofy/spoofy_Appbar.dart';
import 'package:spoofy/spoofy_Playing.dart';
import 'package:spoofy/spoofy_theme.dart';
import 'package:spoofy/Album.dart';

class SpoofyAlbumDetail extends StatefulWidget {
  const SpoofyAlbumDetail(
      {super.key, required this.album, required this.title});

  final String title;
  final Album album;

  @override
  State<SpoofyAlbumDetail> createState() => _SpoofyAlbumDetailState();
}

class _SpoofyAlbumDetailState extends State<SpoofyAlbumDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Album album = widget.album;

    return Scaffold(
      backgroundColor: SpoofyColors.backgroundColor,
      appBar: SpoofyAppbar(appbarTitle: widget.title),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        SpoofyColors.backgroundColor.withOpacity(0.7),
                        BlendMode.modulate),
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.grey,
                        BlendMode.saturation,
                      ),
                      child: Transform.scale(scale: 1, child: album.albumCover),
                    ),
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7,
                    sigmaY: 7,
                  ),
                  child: Container(
                    color: Colors.transparent,
                  )),
              Hero(
                tag: album.albumName,
                child: SizedBox(
                  height: 250,
                  child: Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      child: album.albumCover),
                ),
              )
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                album.albumName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "${album.authorName} ${album.date}",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 10,
              ),
              for (var song in album.songList)
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpoofyPlaying(
                                  album: album,
                                  title: widget.title,
                                  song: song)));
                    },
                    child: SpoofyAlbumDetailSong(title: song, duration: "4:20"))
            ],
          )))
        ],
      ),
    );
  }
}
