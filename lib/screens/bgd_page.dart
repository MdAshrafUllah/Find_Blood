import 'package:f_blood/screens/otp_page.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class bgdpage extends StatefulWidget {
  const bgdpage({Key? key}) : super(key: key);

  @override
  _bgdpageState createState() => _bgdpageState();
}

class _bgdpageState extends State<bgdpage> {

  var v;
  bool _pressedAP = false;
  bool _pressedAN = false;
  bool _pressedBP = false;
  bool _pressedBN = false;
  bool _pressedABP = false;
  bool _pressedABN = false;
  bool _pressedOP = false;
  bool _pressedON = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset('assets/image/app_logo.png',height: 72,width: 72,),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text('Complete your profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black54),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20,left: 20),
              child: Text('Chose Blood Group',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedAP ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('A+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedAP ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedAP = true;
                        if(_pressedAP = true){
                          _pressedAN = false;
                          _pressedBP = false;
                          _pressedBN = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedAN ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('A-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedAN ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedAN = true;
                        if(_pressedAN = true){
                          _pressedAP = false;
                          _pressedBP = false;
                          _pressedBN = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedBP ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('B+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedBP ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedBP = true;
                        if(_pressedBP = true){
                          _pressedAP = false;
                          _pressedAN = false;
                          _pressedBN = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedBN ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('B-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedBN ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedBN = true;
                        if(_pressedBN = true){
                          _pressedAP = false;
                          _pressedAN = false;
                          _pressedBP = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedABP ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('AB+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedABP ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                      _pressedABP = true;
                      if(_pressedABP = true){
                        _pressedAP = false;
                        _pressedAN = false;
                        _pressedBP = false;
                        _pressedBN = false;
                        _pressedABN = false;
                        _pressedOP = false;
                        _pressedON = false;
                      }
                    });},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedABN ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('AB-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedABN ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedABN = true;
                        if(_pressedABN = true){
                          _pressedAP = false;
                          _pressedAN = false;
                          _pressedBP = false;
                          _pressedBN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedOP ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('O+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedOP ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedOP = true;
                        if(_pressedOP = true){
                          _pressedAP = false;
                          _pressedAN = false;
                          _pressedBP = false;
                          _pressedBN = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedON = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 30),
                  height: 60,width: 60,decoration: BoxDecoration(color: _pressedON ? Color(0xFFEA3B4A) : Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('O-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: _pressedON ? Colors.white : Colors.black38),textAlign: TextAlign.center,),
                    ),
                    onTap: (){
                      this.setState(() {
                        _pressedON = true;
                        if(_pressedON = true){
                          _pressedAP = false;
                          _pressedAN = false;
                          _pressedBP = false;
                          _pressedBN = false;
                          _pressedABN = false;
                          _pressedABP = false;
                          _pressedOP = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20,left: 20),
              child: Text('Gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),),
            ),
            Container(
              width: 167,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.black12.withOpacity(0.09),borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 20,top: 20,right: 200),
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                value: v,
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child: Center(
                      child: Text('Male',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black38),textAlign: TextAlign.center,),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Center(
                      child: Text('Female',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black38),textAlign: TextAlign.center,),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Center(
                      child: Text('Other',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black38),textAlign: TextAlign.center,),
                    ),
                  ),
                ],
                onChanged: (_value){
                  setState(() {
                    v = _value;
                  });
                },
                hint: Text('Choose gender',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black38),textAlign: TextAlign.center,),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20,left: 20),
              child: Text('Date of Birth',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 26,fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    cursorColor: Color(0xFFEA3B4A),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Day',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                      ),
                      border: OutlineInputBorder(borderSide:BorderSide.none),
                    ),
                  ),
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 26,fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    cursorColor: Color(0xFFEA3B4A),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Month',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                      ),
                      border: OutlineInputBorder(borderSide:BorderSide.none),
                    ),
                  ),
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 26,fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    cursorColor: Color(0xFFEA3B4A),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Year',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                      ),
                      border: OutlineInputBorder(borderSide:BorderSide.none),
                    ),
                  ),
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              child: InkWell(
                child:Container(
                  child: Text('Cancel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFEA3B4A),),textAlign: TextAlign.center,),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => otppage()));
                },
              ),
            ),
            Container(
              child: InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFEA3B4A),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: Offset(0,5),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: new Column(
                      children: [
                        Container(
                          height: 20,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text('Confirm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => homePage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}