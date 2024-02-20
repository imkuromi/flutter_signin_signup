import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:onboarding_screen/component/my_botton.dart";
import "package:onboarding_screen/component/my_textfield.dart";
import "package:onboarding_screen/screen/home_screen.dart";

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Welcome to our community',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '\nTo get started, please provide your information to create an account.\n',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: nameController,
                hintText: 'Enter your name.',
                obscureText: false,
                labelText: 'Name'),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: emailController,
                hintText: 'Enter your email.',
                obscureText: false,
                labelText: 'Email'),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: passwordController,
                hintText: 'Enter your password.',
                obscureText: false,
                labelText: 'Password'),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: repasswordController,
                hintText: 'Enter your password again.',
                obscureText: false,
                labelText: 'RePassword'),
            const SizedBox(
              height: 20,
            ),
            MyBotton(hinText: "Sign up", onTap: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have a member?',
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
                              builder: (context) => HomeScreen()));
                    },
                    child: const Text('Sign in.'))
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
