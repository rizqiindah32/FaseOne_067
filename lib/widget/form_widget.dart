import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _phone;
  String? _address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Name",
              hintText: "Masukan Username",
              prefixIcon: Icon(Icons.people),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nama";
              }
              return null;
            },
            onSaved: (value) {
              _name = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: "Nomer Telepon",
              hintText: "Masukkan Nomer Telepon",
              prefixIcon: Icon(Icons.phone),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nomor telepon";
              } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                return "Masukkan nomor telepon dengan angka saja";
              } else if (value.length > 11) {
                return "Masukkan nomor telepon maksimal 11 angka";
              }
              return null;
            },
            onSaved: (value) {
              _phone = value;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan alamat dengan benar",
              prefixIcon: Icon(Icons.home),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan alamat";
              }
              return null;
            },
            onSaved: (value) {
              _address = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
