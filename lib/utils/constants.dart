//Colors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';









BorderRadius kBoxRadius(double size) => BorderRadius.all(Radius.circular(size));

const String imgPath = "assets/images";
const String iconPath = "assets/icons";

SystemUiOverlayStyle kOverlayLight({Color? statusColor, Color? navColor}) => SystemUiOverlayStyle(
      statusBarColor: statusColor ?? Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: navColor ?? Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: true,
    );

