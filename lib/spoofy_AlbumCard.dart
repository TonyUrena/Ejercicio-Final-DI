import 'package:flutter/material.dart';
import 'package:spoofy/Album.dart';
import 'package:spoofy/spoofy_AlbumDetail.dart';
import 'package:spoofy/spoofy_theme.dart';

class SpoofyAlbumCard extends StatelessWidget {
  SpoofyAlbumCard({super.key, required this.album, required this.title});

  Album album;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (double.infinity),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SpoofyAlbumDetail(album: album, title: title)));
          },
          child: Transform.translate(
              offset: const Offset(16, 0),
              child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  color: SpoofyColors.surfaceColor,
                  elevation: 8,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: SpoofyColors.primaryColorLight,
                          width: 8)),
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Hero(
                            tag:album.albumName,
                            child: Container(
                                height: 130, child: album.albumCover),
                          ),
                          SizedBox(
                              width: 245,
                              child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(album.albumName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge),
                                      const SizedBox(
                                          width: 200,
                                          child: Divider(
                                              height: 15,
                                              thickness: 3,
                                              color: SpoofyColors
                                                  .primaryColorLight)),
                                      Text(album.authorName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium),
                                      Text(album.genre,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall),
                                      Text(album.date,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall)
                                    ],
                                  )))
                        ],
                      )))),
        ));
  }
}
