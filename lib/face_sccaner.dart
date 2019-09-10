import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'data.dart';
import 'button.dart';

class FaceScaner extends StatefulWidget {
  @override
  _FaceScanerState createState() => _FaceScanerState();
}

class _FaceScanerState extends State<FaceScaner> {
  static File imagefile;
  Future<void> _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imagefile = picture;
    });
  }

  Future<void> _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imagefile = picture;
    });
  }

  static Widget decteimage() {
    if (imagefile == null) {
      return Text('No image selected');
    } else if (imagefile != null) {
      return Image.file(
        imagefile,
        width: 450,
        height: 400,
      );
    }
  }

  Future<void> _showChoiseDailog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Make choise'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(' Gallry'),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      child: Text('Camera'),
                      onTap: () {
                        _openCamera(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: decteimage(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        pressed: () {
                          _openCamera(context);
                        },
                        ButtonName: 'Camera',
                      ),
                      new Button(
                        pressed: () {
                          _openGallary(context);
                        },
                        ButtonName: 'Gallary',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: new Button(
                    pressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PersonData();
                      }));
                    },
                    ButtonName: 'Send data',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
