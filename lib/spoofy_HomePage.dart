import 'package:flutter/material.dart';
import 'package:spoofy/spoofy_AlbumCard.dart';
import 'package:spoofy/spoofy_AlbumDetail.dart';
import 'package:spoofy/spoofy_Appbar.dart';
import 'package:spoofy/spoofy_theme.dart';
import 'package:spoofy/Album.dart';

class SpoofyHomePage extends StatefulWidget {
  const SpoofyHomePage({super.key, required this.title});

  final String title;

  @override
  State<SpoofyHomePage> createState() => _SpoofyHomePageState();
}

class _SpoofyHomePageState extends State<SpoofyHomePage> {
  List<Album> albumList = [];

  @override
  void initState() {
    super.initState();
    albumList = [
      //apiREST
      Album(
          "ApiRest in peace",
          "ApiRest",
          "Black Metal",
          "(2016)",
          Image.asset('assets/images/ApiREST in peace - Album Cover.jpg',
              fit: BoxFit.cover),
          [
            "This is your Endpoint",
            "Hellish TorTure Purgatory",
            "Status Code 666",
            "RESTless Souls",
            "Ballad of the CRUD"
          ]),
      Album(
          "I want it that while",
          "The BLoC Street Boys",
          "Pop",
          "(2021)",
          Image.asset("assets/images/The BLoC Street Boys - Album Cover.jpg",
              fit: BoxFit.cover),
          [
            "I want it that while",
            "Every Body(child:)",
            "Shape of my Model",
            "Strongly Typed",
            "Methodic Love",
            "The constant in me",
          ]),
      Album(
          "Flinging Faeces",
          "Android Monkeys",
          "Electrónica",
          "(2013)",
          Image.asset("assets/images/Android Monkeys - Album Cover.jpg",
              fit: BoxFit.cover),
          [
            "Fuchsia Heart",
            "ApeSHIT",
            "Song number NaN",
            "Foo foo = 'foo'",
            "Monkey see Monkey Code",
            "Gradleually building"
          ]),
      Album(
          "El Flutter",
          "Joaquín Scaffold",
          "Folk Rock",
          "(1986)",
          Image.asset("assets/images/El Flutter - Album Cover.jpg",
              fit: BoxFit.cover),
          [
            "19 Lineas y 500 bugs",
            "Recarga en Caliente",
            "Nos Sobran los Const",
            "A mi child:",
            "Pacto entre Controllers"
          ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpoofyColors.primaryColor,
      appBar: SpoofyAppbar(
        appbarTitle: widget.title,
      ),
      body: Column(
        children: [
          Row(children: [
            const Icon(Icons.arrow_drop_down,
                size: 70, color: SpoofyColors.secondaryColorLight),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'ALBUMS',
                  style: Theme.of(context).textTheme.titleLarge,
                ))
          ]),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                      children: List.generate(albumList.length, (i) {
            return SpoofyAlbumCard(album: albumList[i], title: widget.title);
          }))))
        ],
      ),
    );
  }
}
