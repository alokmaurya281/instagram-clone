import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/providers/auth_provider.dart';
import 'package:instagram_clone/routes/router_constants.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('English(US)'),
                ),
              ),
              const Spacer(),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 60,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  width: 360,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 100, 100, 100),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 4, bottom: 4),
                        border: InputBorder.none,
                        focusColor: Colors.white,
                        label: Text(
                          'Username, email or mobile number',
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  width: 360,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 100, 100, 100),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 4, bottom: 4),
                        border: InputBorder.none,
                        focusColor: Colors.white,
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 100, 100, 100),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Consumer<AuthProvider>(
                  builder: (context, provider, child) {
                    return ElevatedButton(
                      onPressed: () async {
                        await provider.login();
                        context.pushReplacementNamed(RouterConstants.home);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 106, 255, 1),
                        fixedSize: const Size(360, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  'Forgot password ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      color: Color.fromRGBO(0, 106, 255, 1),
                    ),
                    backgroundColor: const Color.fromARGB(0, 0, 68, 1),
                    fixedSize: const Size(360, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Create new account',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 106, 255, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
