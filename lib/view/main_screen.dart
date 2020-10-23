import 'package:flutter/material.dart';
import 'package:invdep/view/bombilla_widget.dart';

import '../model/bombilla_model.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BombillaModel bombilla;

  @override
  void initState() {
    bombilla = BombillaModel();
    super.initState();
  }

  @override
  void dispose() {
    bombilla.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BombillaWidget(
          model: bombilla,
        ),
      ),
    );
  }
}
