import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/auth/components/custom_text_field.dart';
import 'package:quitanda_virtual/src/auth/sign_up_screen.dart';
import 'package:quitanda_virtual/src/base/base_screen.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(height: size.height, width: size.width,
          child: Column(
            children: [
                Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          
                    //nome do app
                    Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 40),
                        children: [
                          TextSpan(
                            text: "Green",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "grocer",
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
          
                            )
                          )
                        ],
                      ),
                    ),
          
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: TextStyle(fontSize: 24),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText("Frutas"),
                            FadeAnimatedText("Verduras"),
                            FadeAnimatedText("Legumes"),
                            FadeAnimatedText("Grãos"),
                          ]),
                      ),
                    ),
                  ],
                ),
              ),
          
              //Container com formulário e botões
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
          
                  //formulário email e senha
                  children: [
                    CustomTextField(icon: Icons.email, label: "E-mail"),
                    CustomTextField(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),
          
                    //botão de entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (c){
                               return const BaseScreen();
                            })
                           );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text("Entrar", style: TextStyle(fontSize: 18)),
                      ),
                    ),
          
                    //botão de esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Esqueceu a senha?",
                          style: TextStyle(color: CustomColors.customContrastColor),
                        ),
                      ),
                    ),
          
                    //divider
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(color: Colors.grey.withAlpha(90)),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("Ou", style: TextStyle(fontSize: 16)),
                          ),
                          Expanded(
                            child: Divider(color: Colors.grey.withAlpha(90)),
                          ),
                        ],
                      ),
                    ),
          
                    //botão de criar conta
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (c){
                              return SignUpScreen();
                            })
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.green),
                          foregroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
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
