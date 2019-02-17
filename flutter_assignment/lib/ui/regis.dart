import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final alter = GlobalKey<ScaffoldState>();
  final TextEditingController mail = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController pass2 =TextEditingController();
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      key: alter,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register"),
      ),
      body: Form(
      child: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          TextFormField(
            controller: mail,
            decoration: InputDecoration(
              hintText: 'Johndoe@mail.com',
              icon: Icon(Icons.person)
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: pass,
            decoration: InputDecoration(
              hintText: '******',
              icon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
          TextFormField(
            controller: pass2,
            decoration: InputDecoration(
              hintText: '******',
              icon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
          RaisedButton(
            child: Text("CONTINUE"),
            color: Colors.blue,
            onPressed: () {
              if(mail.text.isEmpty == true || pass.text.isEmpty ==true || pass2.text.isEmpty == true){
                alter.currentState.showSnackBar(SnackBar(content: Text("กรุณาระบุข้อมูลให้ครบถ้วน")));
              }
              else if(mail.text == 'admin'){
                alter.currentState.showSnackBar(SnackBar(content: Text("user นี้มีอยู่ในระบบแล้ว")));
              }
              else if(pass.text != pass2.text){
                alter.currentState.showSnackBar(SnackBar(content: Text("Password not mat")));
              }
              else{
                Navigator.pushNamed(context, '/');
              }
            }
          ),
        ],
      ) ,
      )
    );//Scaffold
  }
}
  