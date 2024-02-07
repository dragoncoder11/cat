import 'package:catapp/core/utils/constants.dart';
import 'package:catapp/core/utils/custom_button.dart';
import 'package:catapp/core/utils/custom_text_field.dart';
import 'package:catapp/core/utils/styles.dart';
import 'package:catapp/features/authentication/data/presentation/views/widgets/sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  static String id='login';


  final formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 15),
                child: SizedBox(
                  child: Stack(
                    children: [
                      Image.asset(
                      'assets/v.png',
                      width: double.infinity,
                    ),
                      Positioned(
                          top: 115,
                          child: Text(
                            'Welcome back',
                            style: Styles.style24w300.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          child: Text(
                            'sign in to access your account',
                            style: Styles.style14w300,
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              CustomTextField(
                icon: Icons.mail,
                hint: 'Enter your email',
                controller: emailController,
              ),
              CustomTextField(
                obscureText: true,
                icon: Icons.lock,
                hint: 'Password',
                controller: passwordController,
              ),
               const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                      ),
                      Text(
                        ' Remember me ',
                        style: Styles.style9,
                      ),
                    ],
                  ),
                  Text(
                    'Forget password ? ',
                    style: Styles.style9.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
                const SizedBox(height: 220,), CustomButton(
              title: 'Next',
            ontap: () { 
                 if (formKey.currentState!.validate()) {
                  // Perform the login operation here
                }
               },
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New Member?',
                  style: Styles.style13,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignUp.id);
                  },
                  child: Text(
                    ' Register now',
                    style: Styles.style13.copyWith(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}