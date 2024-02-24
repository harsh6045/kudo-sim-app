import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kudo_sim/Utils/validator_helper.dart';
import 'package:kudo_sim/components/toast.dart';
import 'package:kudo_sim/loginpages/resetpass_page.dart';
import 'package:kudo_sim/loginpages/welcomepage.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/storepages/homepage.dart';
import 'package:kudo_sim/storepages/localpackpages.dart';
import 'package:kudo_sim/storepages/regionalpackgepage.dart';
import '../components/my_textfield.dart';
import '../routes/generated_routes.dart';

class SignUpPage extends StatefulWidget {
  final Function()? onTap;
  SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isSigning = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  void _signUpWithGoogle() async {
    setState(() {
      _isSigning = true;
    });

    User? user = await signInWithGoogle();

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "Welcome to the app.");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      showToast(message: "User is successfully signed in");
    } else {
      showToast(message: "Some error occurred");
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      // Trigger Google Sign In
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount == null) {
        // User canceled Google Sign In
        return null;
      }

      // Obtain GoogleSignInAuthentication object
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      // Create GoogleSignInCredential using the obtained authentication
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      // Sign in with Google credential
      UserCredential authResult = await _auth.signInWithCredential(credential);

      // Return the user
      return authResult.user;
    } catch (e) {
      print('Error signing in with Google: $e');
      // Handle the error as needed
      return null;
    }
  }

  ValueNotifier userCredential = ValueNotifier('');
  // text editing controllers
  final usernameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
      home: Scaffold(
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
                  Image.asset("assets/images/register 1.png"),
                  // welcome back, you've been missed!
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Create A\nNew Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Enjoy fast internet everywhere in the world",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // username textfield
                  CustomTextField(
                    controller: usernameController,
                    hintText: 'Full Name',
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    validator: ValidationHelper.validateName,
                  ),

                  const SizedBox(height: 10),

                  CustomTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: ValidationHelper.validateEmail,
                  ),
                  const SizedBox(height: 10),

                  // password textfield
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    validator: ValidationHelper.validatePassword,
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: InkWell(
                        onTap: () {
                          showToast(message: "Welcome to the app.");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 25, top: 25),
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: Center(
                            child: Text(
                              "Register",
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
                      Text(
                        "I Already have an account? ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomePage(onTap: () {}),
                              ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600),
                        ),
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
                        InkWell(
                            onTap: () {
                              _signUpWithGoogle();
                            },
                            child: Image.asset("assets/images/google.png")),
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
      ),
    );
  }
}
