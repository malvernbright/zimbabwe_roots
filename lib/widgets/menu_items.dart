import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomMenuItem {
  final String title;
  final IconData icon;
  const CustomMenuItem({required this.title, required this.icon});
}

class CustomMenuItems {
  static const intro =
      CustomMenuItem(title: 'Introduction', icon: FontAwesomeIcons.house);
  static const thoughtsAndReligion = CustomMenuItem(
      title: 'Thoughts and Religion', icon: FontAwesomeIcons.personPraying);
  static const litsAndMedia = CustomMenuItem(
      title: ' Literature and Media', icon: FontAwesomeIcons.fileAudio);
  static const artCinemaArchitecture = CustomMenuItem(
      title: 'Art, Cinema, and Architecture',
      icon: FontAwesomeIcons.artstation);
  static const leisureDressCuisine = CustomMenuItem(
      title: ' Leisure, Dress, and Cuisine',
      icon: FontAwesomeIcons.personDress);
  static const genderRolesMarriageAndFamily = CustomMenuItem(
      title: 'Gender Roles, Marriage, and Family',
      icon: FontAwesomeIcons.genderless);
  static const socialCustomsAndLifestyle = CustomMenuItem(
      title: 'Social Customs and Lifestyle',
      icon: FontAwesomeIcons.peopleGroup);
  static const musicAndDance =
      CustomMenuItem(title: 'Music and Dance', icon: FontAwesomeIcons.music);
  static const chronology =
      CustomMenuItem(title: 'Chronology', icon: FontAwesomeIcons.listCheck);

  static const all = <CustomMenuItem>[
    intro,
    thoughtsAndReligion,
    litsAndMedia,
    artCinemaArchitecture,
    leisureDressCuisine,
    genderRolesMarriageAndFamily,
    socialCustomsAndLifestyle,
    musicAndDance,
    chronology,
  ];
}
