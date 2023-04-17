import 'package:flutter/material.dart';
import 'Registeration_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Login now to brows our hot offers',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.attach_email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  elevation: 5.0,
                  color: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 80,
                  ),
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  shape: const OutlineInputBorder(borderSide: BorderSide.none),
                  onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RegistrationForm();
                  }));
                },
                child: const Text(
                  'Dont have account ? Regester',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
