import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zimbabwe_roots/screens/art_cinema_architecture.dart';
import 'package:zimbabwe_roots/screens/gender_roles_marriage_family.dart';
import 'package:zimbabwe_roots/screens/intro_screen.dart';
import 'package:zimbabwe_roots/screens/leisure_dress_cuisine.dart';
import 'package:zimbabwe_roots/screens/literature_and_media.dart';
import 'package:zimbabwe_roots/screens/menu_screen.dart';
import 'package:zimbabwe_roots/screens/music_and_dance.dart';
import 'package:zimbabwe_roots/screens/social_customs_and_lifestyle.dart';
import 'package:zimbabwe_roots/screens/thoughts_and_religion.dart';
import 'package:zimbabwe_roots/widgets/menu_items.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _zoomDrawerController = ZoomDrawerController();
  CustomMenuItem currentItem = CustomMenuItems.intro;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      menuScreen: Builder(
        builder: (context) {
          return MenuScreen(
            currentItem: currentItem,
            onSelected: (item) {
              setState(() {
                currentItem = item;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      mainScreen: getScreen(),
      menuScreenWidth: MediaQuery.of(context).size.width,
      borderRadius: 40.0,
      showShadow: true,
      angle: -12,
      drawerShadowsBackgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width * .85,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      androidCloseOnBackTap: true,
      menuBackgroundColor: Colors.indigo,
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case CustomMenuItems.intro:
        return const IntroScreen();
      case CustomMenuItems.thoughtsAndReligion:
        return const ThoughtsAndReligion();
      case CustomMenuItems.litsAndMedia:
        return const LiteratureAndMedia();
      case CustomMenuItems.artCinemaArchitecture:
        return const ArtCinemaArchitecture();
      case CustomMenuItems.leisureDressCuisine:
        return const LeisureDressAndCuisine();
      case CustomMenuItems.genderRolesMarriageAndFamily:
        return const GenderRolesAndMarriage();
      case CustomMenuItems.socialCustomsAndLifestyle:
        return const SocialCustomsAndLifestyle();
      case CustomMenuItems.musicAndDance:
        return const MusicAndDance();
      default:
        return const IntroScreen();
    }
  }
}
