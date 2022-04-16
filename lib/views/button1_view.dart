import 'dart:ui';

import 'package:flutter/material.dart';

class Button1View extends StatelessWidget {
  const Button1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button #1'),
      ),
      body: Center(
        child: _button1Widget,
      ),
    );
  }

  Widget get _button1Widget => GestureDetector(
        onTap: () {
          print('buton #1 tıklandı');
        },
        child: Container(
          width: 360,
          height: 64,
          decoration: BoxDecoration(
            color: Color(0xFFF14902),
            borderRadius: BorderRadius.circular(32),
          ),
          alignment: Alignment.center,
          child: Text(
            'Bİ KODİST',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 6,
            ),
          ),
        ),
      );
}
