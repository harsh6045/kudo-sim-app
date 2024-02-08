import 'package:flutter/material.dart';
import 'package:kudo_sim/Utils/validator_helper.dart';
import 'package:kudo_sim/loginpages/resetpass_page.dart';
import 'package:kudo_sim/loginpages/signup_page.dart';
import 'package:kudo_sim/storepages/homepage.dart';

import '../components/my_textfield.dart';

class WelcomePage extends StatefulWidget {
  final Function()? onTap;
  WelcomePage({super.key, required this.onTap});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // text editing controllers
  final usernameController = TextEditingController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset("assets/images/register 1(2).png"),
                // welcome back, you've been missed!
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Welcome\nTo KudoeSim',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Text("Enjoy fast internet everywhere in the world ",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),

                const SizedBox(height: 40),



                const SizedBox(height: 10),

                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: true,
                  validator: ValidationHelper.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  validator: ValidationHelper.validatePassword,
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetPass(onTap: (){})),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.deepPurple,
                          fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 25,top: 25),
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child:  Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "HappyMonkey",
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("I Don't have an account? ",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(onTap: (){}),));
                      },
                      child: Text("Sign Up",style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w600
                      ),),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Image.asset("assets/images/google.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/images/facebook.png"),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
