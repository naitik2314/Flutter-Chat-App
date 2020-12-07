import 'package:flutter/material.dart';
import 'package:chatapp/widgets/pickers/user_image_picker.dart';

class UserImagePicker extends StatefulWidget {
  @override
  _UserImagePickerState createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  void _pickImage() {}
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CircleAvatar(
        radius: 40,
      ),
      FlatButton.icon(
        textColor: Theme.of(context).primaryColor,
        onPressed: () {},
        icon: Icon(Icons.image),
        label: Text('Add Image'),
      )
    ]);
  }
}
