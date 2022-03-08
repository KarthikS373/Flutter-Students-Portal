import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget loginAppBar = AppBar(
  elevation: 0,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  foregroundColor: Colors.transparent ,
  backgroundColor: Colors.transparent,
  shadowColor: Colors.transparent,
  leading: IconButton(
    icon: const Icon(
      Icons.arrow_back_ios,
      size: 20,
      color: Colors.black,
    ),
    onPressed: () {},
  ),
);
