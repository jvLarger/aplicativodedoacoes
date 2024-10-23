import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/user/new_account_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: kDefaultPaddingAll,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/donation.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              const Text(
                "Entre na sua conta!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: kValueDefaultPadding,
              ),
              CustomTextFormField(
                controller: _emailController,
                label: "E-mail",
                prefixIcon: const Icon(
                  IconlyLight.message,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: kValueDefaultPadding,
              ),
              CustomTextFormField(
                controller: _passwordController,
                label: "Senha",
                obscureText: true,
                prefixIcon: const Icon(
                  IconlyLight.password,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: kValueDefaultPadding,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ENTRAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Ainda não possui uma conta?",
                    style: TextStyle(
                      fontSize: 12,
                      color: kColorFontGray,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewAccountPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(5),
                    ),
                    child: const Text(
                      "Crie uma agora!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kValueDefaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
