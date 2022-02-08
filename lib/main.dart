import 'package:f_blood/screens/homePage.dart';
import 'package:f_blood/screens/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Services/AuthenticationService.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginPage(),
  ));
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  final AuthenticationServices _auth = AuthenticationServices();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Image.asset('assets/image/app_logo.png',height: 72,width: 72,),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54,),),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,top: 20),
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
                  color: Colors.black54,
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
                // onChanged: (value){
                //   setState(() {
                //     email = value;
                //   });
                // },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,top: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 60,
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
                controller: _passwordController,
                style: TextStyle(
                  color: Colors.black54,
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
                          ? Icons.visibility_off : Icons.visibility, color: Colors.black54,
                    ),
                    onPressed: (){
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                  // onChanged: (value){
                  //   setState(() {
                  //     password = value;
                  //   });
                  // }
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 30),
              alignment: Alignment.topLeft,
              child: Text('Forget your password?',style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 18,fontWeight: FontWeight.w500),),
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
                          child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  signUser();
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RichText(
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w500,),
                      ),
                      TextSpan(
                        text: " Sign Up",
                        style: TextStyle(color: Color(0xFFEA3B4A),fontSize: 18,fontWeight: FontWeight.w500,),
                        recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (Context) => signupPage()));
                          },
                      ),
                    ]
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text('Or sign in with:',style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w500,),),
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
                    decoration: BoxDecoration(color: Color(0xFFF7F7F7),borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/image/fb_logo.png',height: 0.1,width: 0.1,),
                  ),
                  SizedBox(width: 50,),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(color: Color(0xFFF7F7F7),borderRadius: BorderRadius.circular(15),),
                    child: Image.asset('assets/image/google_logo.png',height: 0.1,width: 0.1,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signUser() async{
    dynamic authResult = await _auth.loginUser(_emailController.text, _passwordController.text);
    if(authResult == null){
      print('Sign in error. Could Not be able to login');
    }else{
      _emailController.clear();
      _passwordController.clear();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context) => homePage()));
    }
  }
}
