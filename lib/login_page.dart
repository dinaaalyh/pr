import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.scaleDown, // atau sesuaikan dengan kebutuhan Anda
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Image.asset('assets/images/login.png'),
    //       Center(
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: LoginForm(),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 210),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              // prefixIcon: Icon(Icons.person), // Ikon di sebelah kiri
              // suffixIcon: Icon(Icons.lock),   // Ikon di sebelah kanan
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              )
            ),
          )
        ],
      ),
      // width: 300.0, // Set the desired width
      // // padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      // child: Card(
      //   elevation: 1.0,
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         TextField(
      //           controller: _usernameController,
      //           decoration: InputDecoration(labelText: 'Username'),
      //         ),
      //         SizedBox(height: 16.0),
      //         TextField(
      //           controller: _passwordController,
      //           obscureText: true,
      //           decoration: InputDecoration(labelText: 'Password'),
      //         ),
      //         SizedBox(height: 16.0),
      //         ElevatedButton(
      //           onPressed: () {
      //             // Implement your login logic here
      //             String username = _usernameController.text;
      //             String password = _passwordController.text;

      //             // Add your login authentication logic
      //             // For simplicity, let's just print the username and password for now
      //             print('Username: $username, Password: $password');
      //           },
      //           child: Text('Login'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
