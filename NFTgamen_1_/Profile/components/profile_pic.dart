

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../bottom_bar.dart';
import '../profile_score.dart';

import 'iconpick.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Color(0xFFF5F6F9),
                ),
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
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.teal,
                  size: 28.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}


