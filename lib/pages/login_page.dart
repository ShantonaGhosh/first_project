import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:m_reporting_fmcg7a/api_service/api.dart';
import 'package:m_reporting_fmcg7a/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../SharedPreference/sharepreference.dart';
 // import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _cidController = TextEditingController();
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
 // bool _obscureText = true;

  login()async{

    var reponse = await http.get(Uri.parse('http://127.0.0.1:8000/rak_api/syncmobile_depot_image/check_user?cid=rak&user_id=$_userIdController&user_pass=$_passwordController&version=13'));

    print(reponse.body);
    print(reponse.statusCode);

    if(reponse.statusCode ==404){
      print("Login Fail");
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

  }



  @override
  void dispose() {
    _userIdController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2B2B2B),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Center(
            child: Container(
              height: 300,
              //color: Colors.red,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      //initialValue: 'CID',
                      controller: _cidController,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                        label: Text(
                          'CID',
                        ),
                        labelStyle:
                        TextStyle(fontSize: 20.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Provide Your valid CID';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _userIdController,
                      autofocus: false,
                      decoration: const InputDecoration(
                        label: Text('User'),
                        labelStyle:
                        TextStyle(fontSize: 20.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(25.0),
                          ),
                        ),
                        errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Provide Your User Id';
                        }
                        // if (value.contains("")) {
                        //   return 'Please Provide Your Valid User Id';
                        // }
                        else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: const InputDecoration(
                        label: Text('password'),
                        labelStyle:
                        TextStyle(fontSize: 20.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                      ),
                      validator: (value) {
                        // RegExp regexp = RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return 'Please enter your password.';
                        }
                        if (value.length >= 6) {
                          return 'Password is too short ,please expand';
                        }
                        return null;

                        // if (!RegExp(r'^.{6,}$').hasMatch(value)) {
                        //   return 'Please enter your valid password (min 6 charecter)';
                        // }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      ElevatedButton(
                        onPressed: () async {
                          login();
                          // ApiCall.logIn(
                          //     _cidController.text,
                          //     _userIdController.text,
                          //     _passwordController.text,
                          //     context
                          // );
                          // SharedPreferncesMethod()
                          //     .sharedPreferenceSetDataForLogin(
                          //     _cidController.text,
                          //     _userIdController.text,
                          //     _passwordController.text);
                          //
                          //
                          // // print(storlong);
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                      ),
                    ],
                  ),
                ],
              )

              ),

            ),

          ),
        ),

    );
  }


   //Login success notification
  void _showToastMessage() {
    Fluttertoast.showToast(
        msg: "Login Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        timeInSecForIosWeb: 1,
        fontSize: 16.0);
  }
}









