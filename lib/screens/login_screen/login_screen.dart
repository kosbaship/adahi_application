import 'package:adahi_application/shared/app_helper_widgets.dart';
import 'package:adahi_application/shared/app_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final String email;
  final String password;

  LoginScreen({this.email, this.password});
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'test',
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Hero(
                          tag: 'inOutHeroTag',
                          child: CircleAvatar(
                            child: ClipOval(child: Image.asset(kSheepPhoto)),
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          CustomTextFormField(
                              title: 'test',
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              prefixIcon: Icons.email),
                          SizedBox(
                            height: 20.0,
                          ),
                          CustomTextFormField(
                              title: 'tsr',
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              prefixIcon: Icons.lock,
                              obscureText: true),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CustomFancyButton(
                          buttonTitle: 'test'.toUpperCase(), onPressed: () {}),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
