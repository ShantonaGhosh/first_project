//calling api

// class ApiCall {
//   Future<void> logIn(
//       String cid, String userId, String password, BuildContext context) async {
//     try {
//       final http.Response response = await http.get(
//         Uri.parse(
//             'http://w05.yeapps.com/hamdard_api/login/check_user?cid=$cid&user_id=$userId&user_pass=$password'),
//       );
//
//       final Map<String, dynamic> jsonresponse = json.decode(response.body);
//
//       var userInfo = json.decode(response.body);
//       var status = userInfo['status'];
//       var userName = userInfo['user_name'];
//       if (status == 'Success') {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const BottomNavbar()));
//       }
//
//       print(userInfo);
//
//       return userInfo;
//     } on Exception catch (_) {
//       throw Exception("Error on server");
//     }
//   }
// }

//controller declear

// final _companyIdController = TextEditingController();
//   final _userIdController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//ligin button configure
//
//    async {
//      logIn(
//           _companyIdController.text,
//           _userIdController.text,
//           _passwordController.text,
//             );

// SizedBox(
//                           width: screenWidth / 4,
//                             height: screenWidth / 10,
//                             child: ElevatedButton(
//                               onPressed: () async {
//                                 logIn(
//                                   _companyIdController.text,
//                                   _userIdController.text,
//                                   _passwordController.text,
//                                 );
//                                 // SharedPreferncesMethod()
//                                 //     .sharedPreferenceSetDataForLogin(
//                                 //         _companyIdController.text,
//                                 //         _userIdController.text,
//                                 //         _passwordController.text);
//                                 //
//                                 // _saveDataInSharedPreference();
//                                 // print(storlong);
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (_) => BottomNavbar()));
//                               },
//                               child: const Text(
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ))

// SizedBox(
//                             width: screenWidth / 4,
//                             height: screenWidth / 10,
//                             child: ElevatedButton(
//                               onPressed: () async {
//                                 logIn(
//                                   _companyIdController.text,
//                                   _userIdController.text,
//                                   _passwordController.text,
//                                 );
//                                 // SharedPreferncesMethod()
//                                 //     .sharedPreferenceSetDataForLogin(
//                                 //         _companyIdController.text,
//                                 //         _userIdController.text,
//                                 //         _passwordController.text);
//                                 //
//                                 // _saveDataInSharedPreference();
//                                 // print(storlong);
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (_) => BottomNavbar()));
//                               },
//                               child: const Text(
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ))

//                              TextFormField(
//                                   obscureText: _obscureText,
//                                   controller: _passwordController,
//                                   decoration: InputDecoration(
//                                     labelText: 'Password',
//                                     labelStyle: const TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112)),
//                                     prefixIcon: const Icon(Icons.vpn_key,
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112)),
//                                     suffixIcon: _obscureText == true
//                                         ? IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 _obscureText = false;
//                                               });
//                                             },
//                                             icon: const Icon(
//                                               Icons.visibility_off,
//                                               size: 20,
//                                               color: Colors.grey,
//                                             ))
//                                         : IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 _obscureText = true;
//                                               });
//                                             },
//                                             icon: const Icon(
//                                               Icons.remove_red_eye,
//                                               size: 20,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                   ),
//                                   keyboardType: TextInputType.emailAddress,
//                                   textInputAction: TextInputAction.done,
//                                   validator: (value) {
//                                     // RegExp regexp = RegExp(r'^.{6,}$');
//                                     if (value!.isEmpty) {
//                                       return 'Please enter your password.';
//                                     }
//                                     if (value.length >= 6) {
//                                       return 'Password is too short ,please expand';
//                                     }
//                                     return null;
//
//                                     // if (!RegExp(r'^.{6,}$').hasMatch(value)) {
//                                     //   return 'Please enter your valid password (min 6 charecter)';
//                                     // }
//                                   },
//                                 ),

// login full code

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// import 'package:mrap7/apiCall/loginApiCall.dart';
// import 'package:mrap7/service/sharedPrefernce.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final _companyIdController = TextEditingController();
//   final _userIdController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   double screenHeight = 0;
//   double screenWidth = 0;
//   Color initialColor = Colors.white;
//   bool _obscureText = true;
//
//   @override
//   initState() {
//     SharedPreferences.getInstance().then((prefs) {
//       if (prefs.getString("CID") != null) {
//         var a = prefs.getString("CID");
//         setState(() {
//           // print(a.toString());
//           _companyIdController.text = a.toString();
//         });
//       }
//     });
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _userIdController.dispose();
//     _passwordController.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     screenHeight = MediaQuery.of(context).size.height;
//     screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: const Color(0xFFE2EFDA),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: screenHeight / 3.5,
//               width: screenWidth,
//               child: Center(
//                 child: SizedBox(
//                     width: 180,
//                     height: 180,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(200)),
//                       child: const Icon(
//                         Icons.person,
//                         size: 150,
//                         color: Color(0xFFE2EFDA),
//                       ),
//                     )
//                     // decoration: BoxDecoration(
//                     //   // image: DecorationImage(
//                     //   //     image: Image.asset('assets/images/person.jpg').image),
//                     //   color: Colors.blueGrey,
//                     //   borderRadius: BorderRadius.circular(300),
//                     //   // image: const DecorationImage(
//                     //   //     fit: BoxFit.cover,
//                     //   //     image: AssetImage("assets/images/person.jpg")),
//                     // ),
//                     ),
//                 // child: Text('Sign In',
//                 //     style: TextStyle(
//                 //         color: Colors.black, fontSize: screenWidth / 11)),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 height: screenHeight - screenHeight / 3.2,
//                 width: screenWidth,
//                 color: const Color(0xFFE2EFDA),
//                 // decoration: const BoxDecoration(
//                 //   boxShadow: [BoxShadow(blurStyle: BlurStyle.solid)],
//                 //   color: Color(0xFFE2EFDA),
//                 //   // borderRadius: const BorderRadius.only(
//                 //   //     topRight: Radius.circular(60),
//                 //   //     topLeft: Radius.circular(60))
//                 // ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: screenWidth / 60),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: screenHeight / 40,
//                         ),
//                         // Text(
//                         //   'Welcome Back',
//                         //   style: TextStyle(
//                         //       color: Colors.teal,
//                         //       fontSize: screenWidth / 9,
//                         //       fontWeight: FontWeight.bold),
//                         // ),
//                         // Text(
//                         //   'Glad to see you!',
//                         //   style: TextStyle(
//                         //       color: Colors.grey, fontSize: screenWidth / 16),
//                         // ),
//
//                         // Login form
//                         Form(
//                           key: _formKey,
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 vertical: screenWidth / 10,
//                                 horizontal: screenWidth / 28),
//                             child: Column(
//                               children: [
//                                 // Company ID Field
//                                 TextFormField(
//                                   autofocus: false,
//                                   controller: _companyIdController,
//                                   keyboardType: TextInputType.text,
//                                   textInputAction: TextInputAction.next,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Company Id',
//                                     labelStyle: TextStyle(
//                                       color: Color.fromARGB(255, 98, 126, 112),
//                                     ),
//                                     prefixIcon: Icon(Icons.person,
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112)),
//                                   ),
//                                   validator: (value) {
//                                     if (value!.isEmpty) {
//                                       return 'Please Provide Your valid CompanyId';
//                                     } else {
//                                       return null;
//                                     }
//                                   },
//                                 ),
//
//                                 SizedBox(
//                                   height: screenHeight / 50,
//                                 ),
//
//                                 // User Id field
//                                 TextFormField(
//                                   autofocus: false,
//                                   controller: _userIdController,
//                                   keyboardType: TextInputType.emailAddress,
//                                   textInputAction: TextInputAction.next,
//                                   decoration: const InputDecoration(
//                                       labelText: 'User Id',
//                                       labelStyle: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112),
//                                       ),
//                                       prefixIcon: Icon(Icons.person,
//                                           color: Color.fromARGB(
//                                               255, 98, 126, 112))),
//                                   validator: (value) {
//                                     if (value!.isEmpty) {
//                                       return 'Please Provide Your User Id';
//                                     }
//                                     if (value.contains("@")) {
//                                       return 'Please Provide Your Valid User Id';
//                                     } else {
//                                       return null;
//                                     }
//                                   },
//                                 ),
//                                 SizedBox(
//                                   height: screenHeight / 50,
//                                 ),
//
//                                 // Password Field
//                                 TextFormField(
//                                   obscureText: _obscureText,
//                                   controller: _passwordController,
//                                   decoration: InputDecoration(
//                                     labelText: 'Password',
//                                     labelStyle: const TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112)),
//                                     prefixIcon: const Icon(Icons.vpn_key,
//                                         color:
//                                             Color.fromARGB(255, 98, 126, 112)),
//                                     suffixIcon: _obscureText == true
//                                         ? IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 _obscureText = false;
//                                               });
//                                             },
//                                             icon: const Icon(
//                                               Icons.visibility_off,
//                                               size: 20,
//                                               color: Colors.grey,
//                                             ))
//                                         : IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 _obscureText = true;
//                                               });
//                                             },
//                                             icon: const Icon(
//                                               Icons.remove_red_eye,
//                                               size: 20,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                   ),
//                                   keyboardType: TextInputType.emailAddress,
//                                   textInputAction: TextInputAction.done,
//                                   validator: (value) {
//                                     // RegExp regexp = RegExp(r'^.{6,}$');
//                                     if (value!.isEmpty) {
//                                       return 'Please enter your password.';
//                                     }
//                                     if (value.length >= 6) {
//                                       return 'Password is too short ,please expand';
//                                     }
//                                     return null;
//
//                                     // if (!RegExp(r'^.{6,}$').hasMatch(value)) {
//                                     //   return 'Please enter your valid password (min 6 charecter)';
//                                     // }
//                                   },
//                                 ),
//                                 SizedBox(height: screenHeight / 60),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                             width: screenWidth / 4,
//                             height: screenWidth / 10,
//                             child: ElevatedButton(
//                               onPressed: () async {
//                                 ApiCall().dmPath(
//                                     _companyIdController.text,
//                                     _userIdController.text,
//                                     _passwordController.text,
//                                     context);
//                                 SharedPreferncesMethod()
//                                     .sharedPreferenceSetDataForLogin(
//                                         _companyIdController.text,
//                                         _userIdController.text,
//                                         _passwordController.text);
//
//                                 // _saveDataInSharedPreference();
//                                 // print(storlong);
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (_) => BottomNavbar()));
//                               },
//                               child: const Text(
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   //Login success notification
//   void _showToastMessage() {
//     Fluttertoast.showToast(
//         msg: "Login Successfully",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.grey,
//         textColor: Colors.white,
//         timeInSecForIosWeb: 1,
//         fontSize: 16.0);
//   }
// }
