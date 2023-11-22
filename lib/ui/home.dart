// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Virtual',
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  ),
                  Text(
                    'Therapy',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellowAccent,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(223, 208, 178, 1),
                          filled: true,
                          labelText: 'Email or phone',
                          // border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.mark_email_unread_rounded,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 20),
                       TextField(
                         obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        decoration:  InputDecoration(
                          fillColor: const Color.fromRGBO(223, 208, 178, 1),
                          filled: true,
                          labelText: 'Password',
                          focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black),),

                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: 150.0,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown.shade900),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: const Text(
                      ' Don\'t have an account? ',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox( height:25.0),
            SizedBox(
              width: 250.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/G.png', // Replace with the actual path to your Google logo image
                        height: 25.0,
                        width: 25.0,// Adjust the height as needed
                      ),
                    ),
                   const Text(
                     'Sign in with Google',
                     style: TextStyle(color: Colors.black,
                     fontSize:17),
                   ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
