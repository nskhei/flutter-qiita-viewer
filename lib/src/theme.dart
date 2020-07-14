import 'package:flutter/material.dart';

const kQiitaGreen = Color(0xFF00D000);

ThemeData get theme => ThemeData(
      primaryColor: Colors.grey[50],
      accentColor: kQiitaGreen,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
      ),
      indicatorColor: kQiitaGreen,
      cardTheme: CardTheme(
        elevation: 0,
      ),
    );
