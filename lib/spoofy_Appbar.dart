import 'package:flutter/material.dart';
import 'package:spoofy/spoofy_theme.dart';

class SpoofyAppbar extends StatelessWidget implements PreferredSizeWidget {
  String appbarTitle;

  SpoofyAppbar({required this.appbarTitle});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 8,
      shadowColor: Colors.black,
      backgroundColor: SpoofyColors.primaryColorDark,
      leading: IconButton(
        icon: const Icon(Icons.search),
        color: SpoofyColors.accentColor,
        onPressed: () {},
      ),
      title: Text(
        appbarTitle,
        style: const TextStyle(
            color: SpoofyColors.accentColor,
            fontFamily: 'Avenir Heavy',
            fontSize: 25),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: SpoofyColors.accentColor,
            ))
      ],
      centerTitle: true,
    );
  }
}
