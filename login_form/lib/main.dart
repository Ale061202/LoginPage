import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ); 
  }
}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: 190.0,
              padding: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: const CircleAvatar(
                maxRadius: 100.0,
                backgroundImage: NetworkImage('https://cdn-1.motorsport.com/images/amp/68ey3q40/s1000/f1-abu-dhabi-gp-2017-f1-logo-6614917.jpg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid mail'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter a password using letters, numbers and special characters'
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text('Forgot Password', style: TextStyle(color: Colors.white, fontSize: 15),)
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                }, 
                child: const Text('Login',style: TextStyle(color: Colors.white, fontSize: 15),)
              ),
            const SizedBox(
              height: 130,
            ),
            const Text('New User? Create a new account')
          ],
        )
      )
    );
  }

}