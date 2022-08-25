
/*
import 'dart:io';
import 'dart:math';



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class BottomSheetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('show Buttom Sheet'),
      onPressed: () async {
        var result = await showModalBottomSheet<int>(
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music'),
                  onTap: () => Navigator.of(context).pop(1),
                ),
                ListTile(
                  leading: Icon(Icons.videocam),
                  title: Text('Video'),
                  onTap: () => Navigator.of(context).pop(2),
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('Picture'),
                  onTap: () => Navigator.of(context).pop(3),
                ),
              ],
            );
          },
        );
        print('bottom sheet result: $result');
      },
    );


  Future pickImage(ImageSource camera) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      //setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC(ImageSource gallery) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      //setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

}

*/