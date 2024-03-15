import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/data_screen.dart';
import 'package:ucp_pam/widget/footer_widget.dart';
import 'package:ucp_pam/widget/form_widget.dart';
import 'package:ucp_pam/widget/header_widget.dart';
import 'package:ucp_pam/widget/radio_widget.dart';


class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderWidget(),
                FormWidget(),
                RadioWidget(),
                FooterWidget(
                  onPressedSubmit: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataFormScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
