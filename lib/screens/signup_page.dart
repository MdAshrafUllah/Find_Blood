import 'package:f_blood/Services/AuthenticationService.dart';
import 'package:f_blood/screens/otp_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:f_blood/main.dart';
import 'package:email_auth/email_auth.dart';

class signupPage extends StatefulWidget {
  const signupPage({Key? key}) : super(key: key);
  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  final AuthenticationServices _auth = AuthenticationServices();

  EmailAuth emailAuth = new EmailAuth(sessionName: "Find Blood Registration");

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void sendOTP() async {
    emailAuth.sessionName = "Find Blood Registration";
    var result =
        await emailAuth.sendOtp(recipientMail: _emailController.value.text);
    if (result) {
      print("OTP Sent");
      Navigator.push(
          context, MaterialPageRoute(builder: (Context) => const otppage()));
    } else {
      print("We Could not sent the OTP");
    }
  }

  bool _passwordVisible = true;
  bool isChecked = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/image/app_logo.png',
                height: 72,
                width: 72,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xFFEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: _nameController,
                style: TextStyle(
                  color: Color(0xFFEA3B4A),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.emailAddress,
                cursorColor: Color(0xFFEA3B4A),
                decoration: InputDecoration(
                  hintText: 'Full Name',
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
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xFFEEEEEE))
                ],
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
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xFFEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: _passwordController,
                style: TextStyle(
                  color: Color(0xFFEA3B4A),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.text,
                cursorColor: Color(0xFFEA3B4A),
                obscureText: _passwordVisible,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    child: Checkbox(
                        activeColor: Color(0xFFEA3B4A),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 1),
                    width: 310,
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "By creating an account you agree to the ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                            text: " terms of use",
                            style: TextStyle(
                              color: Color(0xFFEA3B4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: " and our",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: " privacy policy",
                            style: TextStyle(
                              color: Color(0xFFEA3B4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEA3B4A),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: new Column(
                      children: [
                        Container(
                          height: 20,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 26),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  if (isChecked == false) {
                    print('Agree With Out terms and conditions');
                  } else {
                    sendOTP();
                    createUser();
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                      text: " Login",
                      style: TextStyle(
                        color: Color(0xFFEA3B4A),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) => loginPage()));
                        }),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Text(
                'Or sign up with:',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/image/fb_logo.png',
                      height: 0.1,
                      width: 0.1,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/image/google_logo.png',
                      height: 0.1,
                      width: 0.1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }

  void createUser() async {
    dynamic result = await _auth.creatNewUser(
        _nameController.text, _emailController.text, _passwordController.text);
    if (result == null) {
      print('Email is not Valid');
    } else {
      setState(() {
        print(result.toString());
        _nameController.clear();
        _emailController.clear();
        _passwordController.clear();
        Navigator.push(
            context, MaterialPageRoute(builder: (Context) => const otppage()));
      });
    }
  }
}
