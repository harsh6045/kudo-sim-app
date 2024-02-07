import 'package:flutter/material.dart';
import 'package:kudo_sim/loginpages/welcomepage.dart';

import '../components/my_textfield.dart';

class ResetPass extends StatefulWidget {
  final Function()? onTap;
  ResetPass({super.key, required this.onTap});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  // text editing controllers
  final usernameController = TextEditingController();

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
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/register 1(1).png"),
                // welcome back, you've been missed!
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Reset\nPassword',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Text("Enter your email addres\nto request a password reset ",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),

                const SizedBox(height: 40),



                const SizedBox(height: 10),

                MyTextField(
                  controller: passwordController,
                  hintText: 'Email',
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 40),
                  child: Text("Click send you will recieve password reset instruction to your inbox ",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),

                const SizedBox(height: 10),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WelcomePage(onTap: (){})),
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
                            "Send",
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
                    Text("Forgot your email ? ",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),),

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
