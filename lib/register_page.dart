import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmpasswordVisible = false;
  bool validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.cyan.shade800,
              Colors.cyan.shade100,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Welcome to',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      scale: 3.5,
                      alignment: Alignment(0.3, 0),
                      image: AssetImage('images/3.png'),
                      fit: BoxFit.fitHeight)),
              child: const Text('G1-NOTES',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  )),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextFormField(
                controller: fullname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                  hintText: "Enter Valid Full name",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Ex. mondejarhoneylee16@gmail.com',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white70,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: isPasswordVisible ? false : true,
                controller: password,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Ex. Honeylee@123!',
                  prefixIcon:
                      const Icon(Icons.lock, color: Colors.white70, size: 22),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    child: Icon(
                      isConfirmpasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white70,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: isPasswordVisible ? false : true,
                controller: confirmPass,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: 'Ex. Honeylee@123!',
                    prefixIcon:
                        const Icon(Icons.lock, color: Colors.white70, size: 22),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmpasswordVisible = !isConfirmpasswordVisible;
                        });
                      },
                      child: Icon(
                        isConfirmpasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white70,
                        size: 22,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
                onTap: () {},
                child: Container(
                  height: 53,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        Colors.cyan.shade100,
                        Colors.cyan.shade800,
                      ])
                      // color: Colors.cyan.shade100,
                      ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.black12.withOpacity(.6),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
