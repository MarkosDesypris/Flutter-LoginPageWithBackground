import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page_with_background_image/constants/palette.dart';
import 'package:login_page_with_background_image/widgets/background_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          backgroundImage(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const Center(
                    child: Text(
                      'Foodybite',
                      style: kHeading,
                    ),
                  ),
                  const SizedBox(height: 100),
                  Form(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[600]!.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextFormField(
                              showCursor: false,
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.envelope,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                hintText: 'Email',
                                hintStyle: kBodyText,
                              ),
                              style: kBodyText,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[600]!.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextFormField(
                              showCursor: false,
                              obscureText: true,
                              autocorrect: false,
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.lock,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                hintText: 'Password',
                                hintStyle: kBodyText,
                              ),
                              style: kBodyText,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Passsword?',
                                style: kBodyText.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 60),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextButton(
                              onPressed: () => print('Login'),
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: kBodyText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  TextButton(
                    onPressed: () => print('Account'),
                    child: const Text(
                      'Create New Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
