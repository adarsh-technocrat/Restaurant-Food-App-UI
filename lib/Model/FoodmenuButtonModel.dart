import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class FoodmenuModel {
  final SvgPicture icon;
  final String title;
  final Function onTap;

  FoodmenuModel({this.icon, this.title, this.onTap});
}

List<FoodmenuModel> foodmenuModel = [
  FoodmenuModel(
    title: "American",
    onTap: () {
      print("American");
    },
    icon: SvgPicture.asset(
      "assets/icons/chicken.svg",
      color: Constants.headerColor,
    ),
  ),
  FoodmenuModel(
    title: "Asian",
    onTap: () {
      print("Asian");
    },
    icon: SvgPicture.asset(
      "assets/icons/chopsticks.svg",
      color: Constants.headerColor,
    ),
  ),
  FoodmenuModel(
    title: "Breakfast",
    onTap: () {
      print("Breakfast");
    },
    icon: SvgPicture.asset(
      "assets/icons/breakfast.svg",
      color: Constants.headerColor,
    ),
  ),
  FoodmenuModel(
    title: "Burgers",
    onTap: () {
      print("Burgers");
    },
    icon: SvgPicture.asset(
      "assets/icons/burger.svg",
      color: Constants.headerColor,
    ),
  ),
  FoodmenuModel(
    title: "Cafe",
    onTap: () {
      print("Cafe");
    },
    icon: SvgPicture.asset(
      "assets/icons/cafe.svg",
      color: Constants.headerColor,
    ),
  ),
];
