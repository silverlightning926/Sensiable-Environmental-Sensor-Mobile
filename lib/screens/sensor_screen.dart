import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sensiable_es_mobile/components/photo_scaffold.dart';

class SensorScreen extends StatefulWidget {
  const SensorScreen({super.key});

  @override
  State<SensorScreen> createState() => _SensorScreenState();
}

class _SensorScreenState extends State<SensorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/images/bgPhoto1.jpeg',
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
