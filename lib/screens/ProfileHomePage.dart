import 'package:f_blood/DatabaseManager/databaseManager.dart';
import 'package:flutter/material.dart';
import 'package:f_blood/Services/AuthenticationService.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  title: Text('Md Ashraf Ullah'),
                  subtitle:  Text('Chittagong'),
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/image/PP.png'),
                    ),
                  ),
                  trailing: Text('O+',style: TextStyle(fontSize: 16,color: Color(0xFFEA3B4A),fontWeight: FontWeight.bold),),
                ),
              );
          }
        )
      ),
    );
  }
}
