import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_project/common/customTextField.dart';
import 'package:furniture_project/themes/themes.dart';
import 'package:furniture_project/view/splashScreen/splashscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SplashScreen(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: AppColors.secondaryColor,
                          size: 16,
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.2,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/credential.png'))),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextInputField(
                        label: '',
                        controller: _usernameController,
                        enabled: true,
                        hint: 'Username',
                        prefix: const Icon(
                          Icons.person,
                          size: 16,
                          color: AppColors.secondaryColor,
                        ),
                        showLabel: true),
                    TextInputField(
                        label: '',
                        controller: _emailController,
                        enabled: true,
                        hint: 'Email Address',
                        prefix: const Icon(
                          Icons.email_rounded,
                          size: 16,
                          color: AppColors.secondaryColor,
                        ),
                        showLabel: true),
                    TextInputField(
                        label: '',
                        controller: _passwordController,
                        enabled: true,
                        obsecure: true,
                        hint: 'Password',
                        prefix: const Icon(
                          Icons.lock,
                          size: 16,
                          color: AppColors.secondaryColor,
                        ),
                        suffix: Icon(
                          Icons.visibility_rounded,
                          size: 16,
                          color: AppColors.secondaryColor,
                        ),
                        showLabel: true)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.primaryColor,
                        backgroundColor: AppColors.primaryButtonColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 15),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                    child: const Text('Sign Up')),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      color: AppColors.secondaryColor,
                      thickness: 2,
                    )),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text('or continue with'),
                    ),
                    Expanded(
                        child: Divider(
                      color: AppColors.secondaryColor,
                      thickness: 2,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icons/google.png'))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.facebookColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.facebook_rounded,
                        color: AppColors.primaryColor,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(children: [
                      const TextSpan(text: 'Do you have an account?'),
                      WidgetSpan(
                          child: InkWell(
                        mouseCursor: SystemMouseCursors.click,
                        highlightColor: AppColors.secondaryColor,
                        onTap: () {},
                        child: Text(
                          ' Log in',
                          style: TextStyle(
                              color: AppColors.primaryButtonColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ))
                    ])),
              )
            ],
          ),
        ),
      )),
    );
  }
}
