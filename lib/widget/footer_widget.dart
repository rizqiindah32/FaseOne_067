import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final VoidCallback onPressedSubmit;

  const FooterWidget({
    Key? key,
    required this.onPressedSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        ElevatedButton(
          onPressed: () {
            onPressedSubmit();
          },
          child: Text("Next"),
        ),
      ],
    );
  }
}
