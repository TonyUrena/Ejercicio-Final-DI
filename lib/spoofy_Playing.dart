import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spoofy/spoofy_AlbumDetailSong.dart';
import 'package:spoofy/spoofy_Appbar.dart';
import 'package:spoofy/spoofy_theme.dart';
import 'package:spoofy/Album.dart';

class SpoofyPlaying extends StatefulWidget {
  const SpoofyPlaying(
      {super.key,
      required this.album,
      required this.title,
      required this.song});

  final String title, song;
  final Album album;

  @override
  State<StatefulWidget> createState() => _SpoofyPlaying();
}

class _SpoofyPlaying extends State<SpoofyPlaying> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Album album = widget.album;
    double _sliderValue = 120;

    return Scaffold(
      backgroundColor: SpoofyColors.primaryColorDark,
      appBar: SpoofyAppbar(appbarTitle: widget.title),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: double.infinity,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          SpoofyColors.primaryColor.withOpacity(0.5),
                          BlendMode.modulate),
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Colors.grey,
                          BlendMode.saturation,
                        ),
                        child:
                            Transform.scale(scale: 1, child: album.albumCover),
                      ),
                    ),
                  ),
                ),
                BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 8,
                      sigmaY: 8,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    )),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Hero(
                        tag: album.albumName,
                        child: Card(
                          elevation: 10,
                          shadowColor: Colors.black,
                          child: album.albumCover
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            widget.song,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                              textAlign: TextAlign.center,
                              widget.album.albumName,
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
                      ),
                      Slider(
                        // TODO mirar porque no puede arrastrarse el slider
                        activeColor: SpoofyColors.secondaryColor,
                        inactiveColor: SpoofyColors.primaryColor,
                        thumbColor: SpoofyColors.accentColor,
                        value: _sliderValue,
                        max: 420,
                        onChanged: (double value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.skip_previous,
                              color: SpoofyColors.secondaryColor, size: 45),
                          Icon(Icons.fast_rewind,
                              color: SpoofyColors.secondaryColor, size: 45),
                          Icon(
                            Icons.play_circle_fill,
                            color: SpoofyColors.accentColor,
                            size: 80,
                          ),
                          Icon(Icons.fast_forward,
                              color: SpoofyColors.secondaryColor, size: 45),
                          Icon(Icons.skip_next,
                              color: SpoofyColors.secondaryColor, size: 45),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
