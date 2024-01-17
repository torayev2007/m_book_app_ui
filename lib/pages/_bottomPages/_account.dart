import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final ImagePicker _picker = ImagePicker();

  File _image = File('');
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          child: _image.path == ''
              ? Center(child: Text("Profile image no"))
              : Image.file(
                  _image,
                  fit: BoxFit.cover,
                ),
        ),
        ElevatedButton(
            onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: 150,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.camera_alt),
                          title: Text("Take a photo"),
                          onTap: () async {
                            await _pickImage(ImageSource.camera);
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.image),
                          title: Text("Pick from gallery"),
                          onTap: () async {
                            await _pickImage(ImageSource.gallery);
                            print(
                                '=====================================================================');
                            print(_image.path);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
            child: Text('Get Image'))
      ],
    )));
  }
}
