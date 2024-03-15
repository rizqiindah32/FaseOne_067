import 'package:flutter/material.dart';
import 'package:ucp_pam/widget/footer_widget.dart';

class DataFormScreen extends StatefulWidget {
  const DataFormScreen({Key? key}) : super(key: key);

  @override
  _DataFormScreenState createState() => _DataFormScreenState();
}

class _DataFormScreenState extends State<DataFormScreen> {
  String? _name;
  String? _address;
  String? _phone;
  String? _selectedFood;
  String? _selectedDrink;
  String? _selectedDessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Makanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nama'),
              onChanged: (value) {
                _name = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Alamat'),
              onChanged: (value) {
                _address = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nomor Telepon'),
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                _phone = value;
              },
            ),
            SizedBox(height: 20),
            Text('Pilihan Makanan:'),
            DropdownButton<String>(
              value: _selectedFood,
              onChanged: (newValue) {
                setState(() {
                  _selectedFood = newValue;
                });
              },
              items: <String>['Nasi Goreng', 'Mie Goreng', 'Ayam Bakar', 'Sate'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Pilihan Minuman:'),
            DropdownButton<String>(
              value: _selectedDrink,
              onChanged: (newValue) {
                setState(() {
                  _selectedDrink = newValue;
                });
              },
              items: <String>['Air Mineral', 'Es Teh', 'Es Jeruk', 'Es Campur'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Pilihan Dessert:'),
            DropdownButton<String>(
              value: _selectedDessert,
              onChanged: (newValue) {
                setState(() {
                  _selectedDessert = newValue;
                });
              },
              items: <String>['Es Krim', 'Pudding', 'Kue', 'Coklat'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
