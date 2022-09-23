import 'package:flutter/material.dart';

class ParameterButton extends StatelessWidget {
  final String title;
  final String value;
  final String unit;
  final Icon icon;

  final Function() onPressed;

  const ParameterButton({
    Key? key,
    required this.title,
    required this.value,
    required this.unit,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(15.0),
      elevation: 10,
      onPressed: onPressed,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 45,
                ),
              ),
              Text(
                unit,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          icon
        ],
      ),
    );
  }
}
