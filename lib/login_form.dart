import 'package:flutter/material.dart';

class LoginFormDemo extends StatelessWidget {
  const LoginFormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(children: [
        Text("Login Page",style: TextStyle(fontSize: 25, color: Colors.red),),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 20,left: 15,right: 25),
          child: TextField(
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: TextField(
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: '234456564',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
        ),
        ElevatedButton(onPressed: (){}, child: Text("Login")),
        Text("Don't have account ?"),
        TextButton(onPressed: (){},
            child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.red),))
      ],),
    );
  }
}
