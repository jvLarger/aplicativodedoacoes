import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/home/components/card_pedido_doacao.dart';
import 'package:flutter/material.dart';

class ListaPedidosDoacao extends StatelessWidget {
  const ListaPedidosDoacao({super.key});

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
            "Outros Pedidos",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kValueDefaultPadding,
          ),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return index % 2 == 0
                  ? Row(
                      children: [
                        CardPedidoDoacao(),
                        const SizedBox(
                          width: 15,
                        ),
                        (index + 1 <= 10 - 1
                            ? CardPedidoDoacao()
                            : const SizedBox()),
                      ],
                    )
                  : const SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
