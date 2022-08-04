import 'package:flutter/material.dart';

import '../Widgets/highlighted_information.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FittedBox(
          child: Column(
            children: const [
              HighlightedInformation(
                color: Colors.blueAccent,
                heading: 'Test Heading',
                information: 'Information',
              )
            ],
          ),
        ),
      ),
    );
  }
}
