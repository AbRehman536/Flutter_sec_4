import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text("Welcome to My App",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              hint: Text("abdullah@gmail.com"),
              prefix: Icon(Icons.email),
              suffixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
                label: Text("Password"),
                hint: Text("12345678"),
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(onPressed: (){
              if(emailController.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Email is Empty")));
                return;
              }
              if(passwordController.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password is Empty")));
                return ;
              }
              if(passwordController.text.length < 8){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                return;
              }
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),

                child: Text("Login")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Don't have Account ?"),
            TextButton(onPressed: (){}, child: Text("Sign Up")),
          ],)
        ],),
      ),
    );
  }
}
