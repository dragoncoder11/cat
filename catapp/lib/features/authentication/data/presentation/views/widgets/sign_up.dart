import 'package:catapp/core/utils/constants.dart';
import 'package:catapp/core/utils/custom_button.dart';
import 'package:catapp/core/utils/custom_text_field.dart';
import 'package:catapp/core/utils/styles.dart';
import 'package:catapp/cubit/authentication_cubit.dart';
import 'package:catapp/cubit/authentication_states.dart';
import 'package:catapp/features/home/data/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SignUp({Key? key}) : super(key: key);

  static String id = 'sign up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthSuccessState) {
            return HomePage();
          } else if (state is AuthInitialState) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                  'Get Started',
                                  style: Styles.style24w300.copyWith(fontWeight: FontWeight.w500),
                                ),
                              ),
                              Positioned(
                                top: 150,
                                child: Text(
                                  'by creating a free account',
                                  style: Styles.style14w300,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomTextField(
                        icon: Icons.person,
                        hint: 'Full name',
                        controller: nameController,
                      ),
                      CustomTextField(
                        icon: Icons.mail,
                        hint: 'Valid email',
                        controller: emailController,
                      ),
                      CustomTextField(
                        icon: Icons.phone,
                        hint: 'Phone number',
                        controller: phoneController,
                      ),
                      CustomTextField(
                        obscureText: true,
                        icon: Icons.lock,
                        hint: 'Strong Password',
                        controller: passwordController,
                      ),
                    const  SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(color: Colors.grey, width: 1.5),
                            ),
                          ),
                          Text(
                            '    By checking the box you agree to our ',
                            style: Styles.style9,
                          ),
                          Text(
                            'Terms ',
                            style: Styles.style9.copyWith(color: kPrimaryColor),
                          ),
                          Text('and ', style: Styles.style9),
                          Text(
                            'Conditions.',
                            style: Styles.style9.copyWith(color: kPrimaryColor),
                          ),
                        ],
                      ),
                    const  SizedBox(height: 100),
                      CustomButton(
                        title: state is AuthLoadedState? CircularProgressIndicator():'Next',
                       ontap: () { if (formKey.currentState!.validate()) {
                            // Perform the sign-up operation here
                            BlocProvider.of<AuthCubit>(context).signUp(
                              name: nameController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                              password: passwordController.text,
                            );
                          } },
                      ),
                     const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already a member?  ', style: Styles.style13),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Log In',
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
          return const AlertDialog(
            title: Text('error'),
            content: Text('something went wrong'),
          );
        },
      ),
    );
  }
}