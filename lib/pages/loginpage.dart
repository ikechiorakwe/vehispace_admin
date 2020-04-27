import 'package:flutter/material.dart';

import 'package:vehispace_admin/utilities/validator.dart';
import 'package:vehispace_admin/models/user.dart';
import 'package:vehispace_admin/widgets/customraisedbutton.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();
  String email;
  String password;
  // bool _autoValidate = false;
  User user = User.create();
  MyValidator validator = MyValidator();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin Login',
        ),
      ),
      body: Center(
          child: Form(
            key: _formKey,
            // autovalidate: _autoValidate,
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,                    
                        validator: validator.emailValidator,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff003399).withOpacity(0.09),
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: 'Email Address',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSaved: (value) {
                        email = value;
                      },
                      ),
                    ),
                    SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: validator.password,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff003399).withOpacity(0.09),
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSaved: (value) {
                        password = value;
                      },
                      ),
                    ),
                    SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Builder(
                          builder: (context) =>SizedBox(
                            width: MediaQuery.of(context).size.width*0.95,
                            height: MediaQuery.of(context).size.height*0.07,
                            child: CustomRaisedButton(
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }
                                _formKey.currentState.save();
                                // Scaffold.of(context).showSnackBar(
                                //   SnackBar(
                                //     content: Text('Processing Data'),
                                //   ),
                                // );
                                
                                user.email = email;
                                user.password = password;
                                print('user.email');
                                print('user.password');
                                // await emailAndPasswordAuth.signInUser(
                                //   email: email,
                                //   password: pass,
                                // );
                         Navigator.pushNamed(context, '/adminmenu');
                              },
                              text: 'LOG IN',
                              elevation: 5.0,
                              color: Color(0xff003399),
                              textColor: Colors.white,
                            ),
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