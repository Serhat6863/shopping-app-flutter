import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/app_bouton.dart';
import 'package:shopping/core/widget/app_text_form_fields.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/social_auth_button.dart';

class SignInRegisterScreen extends StatefulWidget {
  const SignInRegisterScreen({super.key});

  @override
  State<SignInRegisterScreen> createState() => _SignInRegisterScreenState();
}

class _SignInRegisterScreenState extends State<SignInRegisterScreen> {

  bool _isSignIn = true;


  Widget _buildSignInContent(){
    return  Column(
      children: [
        const Text(
          "HAVE AN ACCOUNT",
          style: TextStyle(
            letterSpacing: 2,
            color: AppConstante.kTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5,),

        const Text(
          "Sign in to speed up the checkout",
          style: TextStyle(
            color: AppConstante.kTextgraySecond,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 5,),

        const Text(
          "process and manage your orders",
          style: TextStyle(
            color: AppConstante.kTextgraySecond,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 35,),

        const AppTextFormFields(
          labelText: "Email Adress",
        ),

        SizedBox(height: 30,),

        const AppTextFormFields(
          labelText: "Password",
        ),

        const SizedBox(height: 30,),

        const Text(
          "Forgot Password?",
          style: TextStyle(
            color: AppConstante.kTextColorImportante,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 50,),

        AppBouton(
          text: "SIGN IN",
          color: AppConstante.kTextgraySecond,
          onTap: (){
            Navigator.pushNamed(context, '/home');
          },
        ),

        const SizedBox(height: 30,),

        const Text(
          "OR",
          style: TextStyle(
            letterSpacing: 2,
            color: AppConstante.kTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 30,),

        const SocialAuthButton(
          text: "SIGN IN WITH FACEBOOK",
          icon: Icons.facebook,
        ),

        const SizedBox(height: 25,),

        const SocialAuthButton(
          text: "SIGN IN WITH TWITTER",
          icon: Icons.facebook,
        ),
      ],
    );
  }


  Widget _buildRegisterContent() {
    return  Column(  // Supprimez le const ici
      children: [
        Text(
          "NEW TO OPENFASHION?",
          style: TextStyle(
            letterSpacing: 2,
            color: AppConstante.kTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 5),

        Text(
          "Register to speed up the",
          style: TextStyle(
            color: AppConstante.kTextgraySecond,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 5),

        Text(
          "checkout process and manage",
          style: TextStyle(
            color: AppConstante.kTextgraySecond,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 5),

        Text(
          "your order",
          style: TextStyle(
            color: AppConstante.kTextgraySecond,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 35),

        Row(  // Cette Row ne peut pas être const
          mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ajoutez ceci pour l'espacement
          children: [
            Expanded(  // Ajoutez Expanded pour que les champs prennent l'espace disponible
              child: AppTextFormFields(
                labelText: "First name",
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: AppTextFormFields(
                labelText: "Last name",
              ),
            ),
          ],
        ),

        SizedBox(height: 30),

        AppTextFormFields(
          labelText: "Email Adress",
        ),

        SizedBox(height: 30),

        AppTextFormFields(
          labelText: "Password",
        ),

        SizedBox(height: 30),

        Text(
          "By you clicking Register Now, you agree to our",
          style: TextStyle(
            color: AppConstante.kTextColorPrimary,
            fontSize: 16,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Term & Conditions",
              style: TextStyle(
                color: AppConstante.kTextColorImportante,
                fontSize: 16,
              ),
            ),
            Text(
              " and",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
              ),
            ),
            Text(
              " Privacy Policy",
              style: TextStyle(
                color: AppConstante.kTextColorImportante,
                fontSize: 16,
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        AppBouton(
          text: "REGISTER NOW",
          color: AppConstante.kTextgraySecond,
          onTap: (){
            Navigator.pushNamed(context, '/home');
          },
        ),

        SizedBox(height: 20),

        Text(
          "OR",
          style: const TextStyle(
            letterSpacing: 2,
            color: AppConstante.kTextColorPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 20),

        SocialAuthButton(
          text: "SIGN IN WITH FACEBOOK",
          icon: Icons.facebook,
        ),

        SizedBox(height: 25),

        SocialAuthButton(
          text: "SIGN IN WITH TWITTER",
          icon: Icons.facebook,
        ),


      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstante.kBackgroundColor,
      appBar: const MainAppBar(
        backgroundColor: AppConstante.kBackgroundColor,
        iconColor: AppConstante.kTextColorPrimary,
      ),
      drawer: const Drawer(),

      body:  Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isSignIn = true;
                          });
                        },
                        child:  Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: _isSignIn ? AppConstante.kTextColorPrimary : AppConstante.kTextgray,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
          
                      Container(
                        width: 100,
                        height: 1,
                        color: AppConstante.kTextColorImportante,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isSignIn = false;
                          });
                        },
                        child:  Text(
                          "REGISTER",
                          style: TextStyle(
                            color: _isSignIn ? AppConstante.kTextgray : AppConstante.kTextColorPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        width: 100,
                        height: 1,
                        color: AppConstante.kTextColorImportante,
                      ),
                    ],
                  ),
                ],
              ),
          
              const SizedBox(height: 35,),
          
              _isSignIn ? _buildSignInContent()  : _buildRegisterContent(),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
