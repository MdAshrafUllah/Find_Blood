import 'package:flutter/material.dart';
import 'package:f_blood/screens/signup_page.dart';
import 'package:f_blood/screens/bgd_page.dart';
import 'package:email_auth/email_auth.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {

  EmailAuth emailAuth = new EmailAuth(sessionName: "Find Blood Registration");

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _OTPController = TextEditingController();


  void verifyOTP() async{
    var result = emailAuth.validateOtp(recipientMail: _emailController.value.text, userOtp: _OTPController.value.text);
    if(result){
      print("OTP Verified");
      Navigator.push(context,
          MaterialPageRoute(builder: (Context) => bgdpage()));
    }else{
      print("Wrong OTP");
      _OTPController.clear();
    }
  }

  void sendOTP() async{
    emailAuth.sessionName = "Find Blood Registration";
    var result = await emailAuth.sendOtp(recipientMail: _emailController.value.text);
    if(result){
      print("OTP Sent");
    }else{
      print("We Could not sent the OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset('assets/image/app_logo.png',height: 72,width: 72,),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Check Your Email,',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 26),),
                  ),
                  Container(
                    child: Text('we sent to you an OTP code',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 20),),
                  ),
                  Container(
                    height: 320,
                    child: Image.asset('assets/image/otpcover.png',height: 350,width: 350,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Confirm Email',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 30),textAlign: TextAlign.left,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Enter Your Email Again',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w700,fontSize: 16),textAlign: TextAlign.left,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20,top: 10),
                    padding: EdgeInsets.only(left: 20,right: 20),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                      boxShadow: [BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 50,
                          color: Color(0xFFEEEEEE)
                      )],
                    ),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: _emailController,
                      style: TextStyle(
                        color: Color(0xFFEA3B4A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xFFEA3B4A),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Enter OTP',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 30),textAlign: TextAlign.left,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Text('It has been sent to your email ID ',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w700,fontSize: 16),textAlign: TextAlign.left,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,top: 10),
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: Color(0xFFEEEEEE)
                )],
              ),
              child: TextField(
                controller: _OTPController,
                maxLength: 6,
                style: TextStyle(
                  letterSpacing: 35,
                  color: Color(0xFFEA3B4A),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                cursorColor: Color(0xFFEA3B4A),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 17),
                  hintText: 'OTP Put Here',
                  hintStyle: TextStyle(
                    letterSpacing: 0,
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            InkWell(
              child: Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 20,top: 15),
                child: Text('Resend OTP',style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 14,fontWeight: FontWeight.w500),),
              ),
              onTap: (){
                sendOTP();
              },
            ),
            Container(
              child: InkWell(
                child:Container(
                  child: Text('Cancel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFEA3B4A),),textAlign: TextAlign.center,),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => signupPage()));
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
                          margin: EdgeInsets.only(top: 26),
                          child: Text('Confirm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  verifyOTP();
                },
              ),
            ),
          ],
          ),
      ),
    );
  }
}
