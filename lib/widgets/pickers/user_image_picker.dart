import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserImagePicker extends StatefulWidget {
  @override
  _UserImagePickerState createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File _pickedImage;
  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    final pickedImageFile = File(pickedImage.path);
    setState(() {
      _pickedImage = pickedImageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CircleAvatar(
        radius: 40,
        backgroundImage: _pickedImage != null ? FileImage(_pickedImage) : null,
      ),
      FlatButton.icon(
        textColor: Theme.of(context).primaryColor,
        onPressed: _pickImage,
        icon: Icon(Icons.image),
        label: Text('Add Image'),
      )
    ]);
  }
}
