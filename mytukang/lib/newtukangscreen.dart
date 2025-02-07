//import 'dart:io';
// ignore_for_file: dead_code

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:image_picker/image_picker.dart';

class NewTukangScreen extends StatefulWidget {
  const NewTukangScreen({super.key});

  @override
  State<NewTukangScreen> createState() => _NewTukangScreenState();
}

class _NewTukangScreenState extends State<NewTukangScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  var districts = [
    'Baling',
    'Bandar Baharu',
    'Kota Setar',
    'Kuala Muda',
    'Kubang Pasu',
    'Kulim',
    'Langkawi',
    'Padang Terap',
    'Pendang',
    'Pokok Sena',
    'Sik',
    'Yan',
  ];

  File? image;

  String selectedDistrict = 'Baling';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('NewTukang'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      //openCamera();
                    },
                    child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          //image: image == null
                          //? const AssetImage(''assets/image/profile.png')
                          //: FileImage(image!)as ImageProvider <Object>,
                          //fit: BoxFit.contain,
                        )),
                  ),
                  SizedBox(height: 10),
                  TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(5.0), // Rounded edges
                          borderSide:
                              BorderSide(color: Colors.pink, width: 2.0),
                        ),
                      )),
                  SizedBox(height: 10),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(5.0), // Rounded edges
                        borderSide: BorderSide(color: Colors.pink, width: 2.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(5.0), // Rounded edges
                        borderSide: BorderSide(color: Colors.pink, width: 2.0),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton(
                      value: selectedDistrict,
                      underline: const SizedBox(),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: districts.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        selectedDistrict = newValue!;
                        print(selectedDistrict);
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        onsubmitDialog();
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<void> openCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 800,
      maxHeight: 600,
    );

    if (pickedFile != null) {
      image = File(pickedFile.path);
    }
    setState(() {});
  }

  void onsubmitDialog() {
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;

    if (image == null || name.isEmpty || email.isEmpty || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all required fields'),
          backgroundColor: Colors.pink,
        ),
      );
      return;
    }

    //if (phone.length < 10) {
    // ScaffoldMessenger.of
  }
}
