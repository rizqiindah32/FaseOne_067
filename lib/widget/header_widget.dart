import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Data From"),
    SizedBox(height: 25,
    ),
    CircleAvatar(
      backgroundImage: NetworkImage(
        "https://th.bing.com/th/id/R.0270769acaa88d11b9749bde20d521b7?rik=8aN6ET7stFA9ow&riu=http%3a%2f%2fwww.monsieurspoon.com%2fwp-content%2fuploads%2f2021%2f05%2fBannerMSPik.jpg&ehk=aVBx4auW3JTmjWTgFpKBtEGgOK0zdX4JEXJfdsmI9jU%3d&risl=&pid=ImgRaw&r=0"),
        radius: 80,
    )
    ],
    );
  }
}