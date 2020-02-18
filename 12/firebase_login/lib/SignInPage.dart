import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email,_password;

  checkAuthentication() async {
    _auth.onAuthStateChanged.listen((user) async{
      if(user != null){
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  navigateToSignUpScreen(){
    Navigator.pushReplacementNamed(context, "/SignUpPage");
  }

  @override
  void initState(){
    super.initState();
    this.checkAuthentication();
  }

  void signin() async{
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();

      try {
        FirebaseUser user = (await _auth.signInWithEmailAndPassword(email: _email,
        password: _password)) as FirebaseUser;
      } catch (e) {
        showError(e.message);
      }
    }
  }

  showError(String errorMessage)
  {
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Error'),
          content: Text(errorMessage),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
      
    );
  }
   

  @override
  Widget build(BuildContext context) {
    return Container(
       
    );
  }
}