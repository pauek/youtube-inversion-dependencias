import 'package:flutter/material.dart';

import '../model/bombilla_model.dart';

class BombillaWidget extends StatefulWidget {
  final BombillaModel model;
  BombillaWidget({@required this.model});

  @override
  BombillaWidgetState createState() => BombillaWidgetState();
}

class BombillaWidgetState extends State<BombillaWidget> with BombillaModelObserver {
  String get asset => 'assets/light-bulb-${widget.model.isOn ? 'on' : 'off'}.png';

  @override
  void initState() {
    widget.model.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    widget.model.removeObserver(this);
    super.dispose();
  }

  @override
  void onBombillaModelChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.model.enciende();
      },
      child: Image.asset(asset),
    );
  }
}
