
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:sspu_hackathon/utils/my_check_box.dart';
import 'package:sspu_hackathon/widgets/waving_background.dart';


class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WavingGradientBackground(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Lottie.asset('assets/animations/password.json'),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                fontSize: 50,
                              ),
                    
                              children: [
                                TextSpan(text: 'Welcome Back!,'),
                                TextSpan(
                                  text: ' Admin',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                    
                          Text(
                            'Welcome back!, Please enter your details',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              letterSpacing: .4,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hint: Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  letterSpacing: .4,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hint: Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  letterSpacing: .4,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  MyCheckBox(),
                                  Text('Remeber for 30 days'),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Forgot Password'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed:()=> context.go('/desktopHomePage'),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sign Up'),
                                  CircleAvatar(
                                    backgroundColor: Colors.yellow,
                                    child: Icon(Icons.arrow_outward_rounded),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text('Already have an account?'),
                              TextButton(
                                onPressed: () {},
                                child: Text('Login'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('or------------------'),
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Login with Google '),
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/Image/google.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}