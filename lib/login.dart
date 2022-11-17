import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:  Column(
        children: [
          Image.asset("assets/images/login.jpg",
          fit: BoxFit.cover,
          ),

          const SizedBox(
            height: 50.0,
          ),


          const Text("Wakanda Forever",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical:6.0, horizontal:32.0),
            child: Column(
              children: [
              TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter  UserName",
                labelText: "Enter Username"
              ),
              ),

             TextFormField(
               obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter  Password",
                labelText: "Password"
              ),
              ),
             const  SizedBox(
                height: 20,
                ),

              ElevatedButton(
                
                onPressed: (){},
                style: TextButton.styleFrom(),
                child: const Text("Login")
                ),


            ],),
          )],
      ),






      // child: Center(
      // child: Text("Login page",style: TextStyle(
      //   fontSize: 25,
      //   color: Colors.blue,
      //   fontWeight: FontWeight.bold,
      // ),
      // ),
      // ),
    );
  }
}