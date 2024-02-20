import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_botton.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/my_iconbtn.dart';
import 'package:onboarding_screen/screen/sign_up_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signInWithEmail() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello,ready to get started",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign-in with your email and password",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailController,
                hintText: "Enter your email.",
                obscureText: false, // true => type:password
                labelText: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                hintText: "Enter your password.",
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyBotton(hinText: 'Sign In', onTap: signInWithEmail),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '  Or continue with  ',
                        style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'assets/images/google.png'),
                  SizedBox(
                    width: 10,
                  ),
                  MyIconButton(imagePath: 'assets/images/apple.png')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: const Text('Register now.'))
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
