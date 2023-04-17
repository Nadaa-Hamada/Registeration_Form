import 'package:flutter/material.dart';

bool passwordvisible = true;

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

//bool passwordvisible=true;
class _RegistrationFormState extends State<RegistrationForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Regester',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:
          //var passwordvisible=true;
          Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'REGISTER',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Register now to brows our hot offers',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                  prefixIcon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.attach_email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock_outlined),
                  //var passwordvisible=true;
                  //suffixIcon: IconButton(
                  //onPressed: () {

                  // setState(() {
                  // passwordvisible = !passwordvisible;
                  //});
                  //},
                  //icon: Icon(passwordvisible
                  // ? Icons.visibility
                  //: Icons.visibility_off),
                  //),
                  suffixIcon: Icon(Icons.visibility),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'phone',
                  hintText: 'Enter your phone',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                //style: ButtonStyle(),
                onPressed: () {},
                child: const Text(
                  'REGESTER',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),*/
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
                child: const Text(
                  'Regester',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                shape: const OutlineInputBorder(borderSide: BorderSide.none),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
