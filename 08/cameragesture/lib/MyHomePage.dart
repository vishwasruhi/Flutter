import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
class MyHomePage extends StatefulWidget
{
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  File _image;
  //File _gallery;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My camera app"),
      ),
      body: Center(
        child: _image==null?Text('No image'): Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optionsDialogBox,
        child: Icon(
          Icons.add_a_photo, 
        ),
        tooltip: 'Open Camera',
      ),
    );
  }
Future <void> _optionsDialogBox()
{
return showDialog(
  context: context,
  builder: (BuildContext context)
  {
    return AlertDialog(
      backgroundColor: Colors.purple,
      shape:RoundedRectangleBorder(),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            GestureDetector(
              child: Text('Take a picture',
              style:TextStyle(color: Colors.white,fontSize: 20.0,)
              ),
              onTap: openCamera,
            ),
            Padding(
              padding:EdgeInsets.all(20.0),
            ),
            GestureDetector(
              child: Text('Select Image from camera',
              style:TextStyle(color: Colors.white,fontSize: 20.0,)
              ),
              onTap: openGallery,
            ),
            
              
            
          ],
        ),
      ),
    );
  }
);
}
  Future openCamera() async
  {
     var image = await ImagePicker.pickImage(source: ImageSource.camera);
     setState(() {
      _image=image; 
     });
  }
  Future openGallery() async
  {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image=picture;
    });
  }
}