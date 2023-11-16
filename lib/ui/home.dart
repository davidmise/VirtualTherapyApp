import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
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
          Container(
            child: const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white70,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [

                  TextField(
                    keyboardType:TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Color.fromRGBO(223, 208, 178, 1),
                        filled: true,
                        labelText: 'Email',
                        // border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.black),
                        ),
                        prefixIcon: Icon(Icons.mark_email_unread_rounded)
                    ),
                  ),
                  SizedBox(height:20),
                  TextField(
                    keyboardType:TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Color.fromRGBO(223, 208, 178, 1),
                        filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black),),
                        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black),),
                        prefixIcon: Icon(Icons.password_rounded)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
