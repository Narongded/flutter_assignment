import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm>{
  final alter = GlobalKey<ScaffoldState>();
  final TextEditingController mail = TextEditingController();
  final TextEditingController pass = TextEditingController();
  get emailController => null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: alter,
      body: Form(
      child: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          Image.asset('images/man.jpg'),
          TextFormField(
            controller: mail,
            decoration: InputDecoration(
              labelText: "User ID",
              hintText: "Enter your Email",
              icon: Icon(Icons.person)
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: pass,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              icon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.text,
            obscureText:true
            
          ),
          RaisedButton(
            child: Text("LOGIN"),
            onPressed: () {
              if(mail.text.isEmpty == true || pass.text.isEmpty ==true){
                alter.currentState.showSnackBar(SnackBar(content: Text("กรุณาระบุ User หรือ Password")));
              }
              else if(mail.text == 'admin' && pass.text == 'admin'){
                alter.currentState.showSnackBar(SnackBar(content: Text("user or password ไม่ถูกต้อง")));
              }
              else{
                Navigator.pushNamed(context, '/3');
              }
            }
          ),
          FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, '/2');
            },
            child:Container(
              child: Text('Register New Account'),
              margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
            )
            
          )
        ],
      ) ,
      )
    );

  }}