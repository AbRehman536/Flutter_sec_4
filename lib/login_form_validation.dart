import 'package:flutter/material.dart';

class LoginFormValidationDemo extends StatefulWidget {
  const LoginFormValidationDemo({super.key});

  @override
  State<LoginFormValidationDemo> createState() => _LoginFormValidationDemoState();
}

class _LoginFormValidationDemoState extends State<LoginFormValidationDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefix: Icon(Icons.email),
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
            controller: passwordController,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: '234456564',
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Email is empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Password is Empty"))
            );
            return;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Password should be more than 8 digits"))
            );
            return;
          }
        }, child: Text("Login")),
        Text("Don't have account ?"),
        TextButton(onPressed: (){},
            child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.red),))
      ],),
    );
  }
}
