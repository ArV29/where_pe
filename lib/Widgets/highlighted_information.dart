import 'package:flutter/material.dart';

class HighlightedInformation extends StatelessWidget {
  final Color color;
  final String heading;
  final String information;
  const HighlightedInformation(
      {Key? key,
      required this.color,
      required this.heading,
      required this.information})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              constraints: const BoxConstraints(
                  minWidth: 10, maxWidth: 10, minHeight: 0, maxHeight: 100),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  information,
                  style: TextStyle(color: color),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
