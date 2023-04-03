import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_blood/Services/AuthenticationService.dart';
import 'package:f_blood/main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AuthenticationServices _auth = AuthenticationServices();

  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future getData() async {
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection("Register People").get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            imageprofile(),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                "MD Ashraf Ullah",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 2,
              ),
              child: Text(
                "O+",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEA3B4A),
                ),
              ),
            ),
            SizedBox(height: 275),
            InkWell(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFEA3B4A),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              onTap: () async {
                await _auth.signOut().then((result) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (Context) => loginPage()));
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget imageprofile() {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 80,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/image/PP.png")
              : FileImage(
                  File(_imageFile!.path),
                ) as ImageProvider,
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: ((builder) => bottomsheet()));
              },
              child: Icon(
                Icons.camera_alt,
                color: Color(0xFFEA3B4A),
                size: 30,
              )),
        ),
      ],
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          //SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  takephoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              TextButton.icon(
                onPressed: () {
                  takephoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takephoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile!;
    });
    Navigator.pop(context);
  }
}
