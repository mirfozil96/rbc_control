import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../gen/assets.gen.dart';
import '../../../routes/app_route_name.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/sign_in_chekbox.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool vision = false;
  bool isCheckboxChecked = false;
  void togglePasswordVisibility() {
    vision = !vision;
  }

  void toggleCheckbox() {
    isCheckboxChecked = !isCheckboxChecked;
  }

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    // Define your back button action here
                  },
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Let’s Sign You In',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  height: 1.3,
                  letterSpacing: -1.6,
                  color: const Color(0xFF1B1D21),
                ),
              ),
              const SizedBox(height: 16),
              Opacity(
                opacity: 0.6,
                child: Text(
                  'Welcome back, you’ve been missed!',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    height: 1.4,
                    letterSpacing: -0.8,
                    color: const Color(0x80000000),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                controller: emailC,
                keyBoardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hintText: "example@gmail.com",
                labelText: "Email",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is not filled";
                  } else if (!value.contains('@')) {
                    return "Invalid email address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: passC,
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: vision,
                hintText: "Enter your password",
                labelText: "Password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is not filled";
                  } else if (value.length < 6) {
                    return "Password should be more than 6 characters";
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  onPressed: togglePasswordVisibility,
                  icon: vision
                      ? const Icon(Icons.visibility, color: Color(0xFFADADAD))
                      : const Icon(Icons.visibility_off,
                          color: Color(0xFFADADAD)),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SignUpCheckbox(
                    isChecked: isCheckboxChecked,
                    onChanged: (bool? value) {
                      toggleCheckbox();
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Forgot Password ?',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.7,
                        letterSpacing: -0.3,
                        color: const Color(0xFFFD6B22),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(
                              '${AppRouteName.login}/${AppRouteName.forgetPassword}'); // Example navigation
                        },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              MaterialButton(
                onPressed: () async {},
                color: const Color(0xFFFD6B22),
                height: 60,
                minWidth: double.infinity,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                child: Text(
                  "Sign In",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height: 1.7,
                    letterSpacing: -0.3,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'OR',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  height: 1.7,
                  letterSpacing: 1,
                  color: const Color(0xFF8F92A1),
                ),
              ),
              const SizedBox(height: 16),
              MaterialButton(
                onPressed: () {},
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.google.svg(height: 16, width: 16, fit: BoxFit.cover),
                    const SizedBox(width: 10),
                    Text(
                      'Continue with Google',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 1.4,
                        letterSpacing: -0.4,
                        color: const Color(0xFF171717),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    letterSpacing: -0.2,
                    color: const Color(0x80000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        letterSpacing: -0.2,
                        color: const Color(0xFFFD6B22),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(
                              '${AppRouteName.login}/${AppRouteName.register}'); // Example navigation
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
