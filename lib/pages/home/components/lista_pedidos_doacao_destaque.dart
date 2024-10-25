import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/home/components/card_pedido_doacao_destaque.dart';
import 'package:flutter/material.dart';

class ListaPedidosDoacaoDestaque extends StatelessWidget {
  const ListaPedidosDoacaoDestaque({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kValueDefaultPadding,
          ),
          child: Text(
            "Pedidos em Destaque",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 280,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: index == 0
                      ? const EdgeInsets.only(
                          left: kValueDefaultPadding,
                          right: kValueDefaultPadding)
                      : const EdgeInsets.only(right: kValueDefaultPadding),
                  child: const CardPedidoDoacaoDestaque(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
