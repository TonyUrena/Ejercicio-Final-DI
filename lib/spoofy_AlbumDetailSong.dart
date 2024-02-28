import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spoofy/spoofy_Appbar.dart';
import 'package:spoofy/spoofy_theme.dart';
import 'package:spoofy/Album.dart';

class SpoofyAlbumDetailSong extends StatefulWidget {
  const SpoofyAlbumDetailSong(
      {super.key, required this.title, required this.duration});

  final String title, duration;

  @override
  State<StatefulWidget> createState() => _SpoofyAlbumDetailSongState();
}

class _SpoofyAlbumDetailSongState extends State<SpoofyAlbumDetailSong> {
  @override
  void initState() {
    super.initState();
        //TODO Animar el scroll si el texto tiene partes no visibles
      }



  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(children: [
          Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(right: 15),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: SpoofyColors.primaryColor, // Color del círculo
              ),
              child: const Icon(Icons.play_arrow,
                  size: 40, color: SpoofyColors.accentColor)),
          Expanded(
            child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Text(widget.title,
                    style: Theme.of(context).textTheme.headlineSmall)),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(widget.duration,
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ]));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
