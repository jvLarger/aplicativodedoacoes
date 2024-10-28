import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/components/custom_top_app_bar.dart';
import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:iconly/iconly.dart';

class AlterarUsuarioPage extends StatefulWidget {
  const AlterarUsuarioPage({super.key});

  @override
  State<AlterarUsuarioPage> createState() => _AlterarUsuarioPageState();
}

class _AlterarUsuarioPageState extends State<AlterarUsuarioPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
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
              title: "Alterar Informações",
            ),
            Container(
              padding: kDefaultPaddingAll,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              "https://www.al.ce.gov.br//storage/deputado/57/foto/dl9oNUbDldKgAuBHrB1bVtP2g7LbRuaqMYSeH8f8.jpg",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: kColorApp,
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  IconlyLight.camera,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
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
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SALVAR",
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
