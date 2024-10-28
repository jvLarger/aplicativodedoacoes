import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/components/custom_top_app_bar.dart';
import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PedidoCadastroPage extends StatefulWidget {
  const PedidoCadastroPage({super.key});

  @override
  State<PedidoCadastroPage> createState() => _PedidoCadastroPageState();
}

class _PedidoCadastroPageState extends State<PedidoCadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTopAppBar(
              title: "Novo Pedido",
            ),
            Container(
              padding: const EdgeInsets.all(
                kValueDefaultPadding,
              ),
              child: Column(
                children: [
                  const CustomTextFormField(
                    label: "O que você precisa?",
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  const CustomTextFormField(
                    label: "Por quê você precisa disso?",
                    minLines: 5,
                    maxLines: 20,
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  const Text(
                    "Adicione uma foto que ajude a contar sua história!",
                    style: TextStyle(
                      color: kColorApp,
                    ),
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding / 2,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kValueDefaultPadding,
                      vertical: kValueDefaultPadding * 2,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kColorFontGray,
                        width: 0.3,
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        IconlyLight.camera,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  const Text(
                    "Informe abaixo para qual cidade e estado você está precisando desse item",
                    style: TextStyle(
                      color: kColorApp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding / 2,
                  ),
                  const CustomTextFormField(
                    label: "CEP",
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: CustomTextFormField(
                          label: "Cidade",
                        ),
                      ),
                      SizedBox(
                        width: kValueDefaultPadding,
                      ),
                      Expanded(
                        flex: 3,
                        child: CustomTextFormField(
                          label: "UF",
                        ),
                      ),
                    ],
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
