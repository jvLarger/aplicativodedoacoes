import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/components/custom_top_app_bar.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({super.key});

  @override
  State<NewAccountPage> createState() => _NewAccountPageState();
}

class _NewAccountPageState extends State<NewAccountPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTopAppBar(
              title: "Novo Usuário",
            ),
            Container(
              padding: kDefaultPaddingAll,
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: _firstNameController,
                    label: "Primeiro Nome",
                    prefixIcon: const Icon(
                      IconlyLight.profile,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  CustomTextFormField(
                    controller: _surnameController,
                    label: "Sobrenome",
                    prefixIcon: const Icon(
                      IconlyLight.category,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  CustomTextFormField(
                    controller: _birthDateController,
                    label: "Data de Nascimento",
                    textInputType: TextInputType.number,
                    inputFormatters: [
                      maskFormatter,
                    ],
                    prefixIcon: const Icon(
                      IconlyLight.calendar,
                      size: 18,
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
                  CustomTextFormField(
                    controller: _passwordConfirmationController,
                    label: "Confirmação de Senha",
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
                          "REGISTRAR",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
