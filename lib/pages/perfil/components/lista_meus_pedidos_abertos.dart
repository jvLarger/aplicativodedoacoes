import 'package:aplicativodedoacoes/pages/perfil/components/card_meu_pedido_aberto.dart';
import 'package:flutter/material.dart';

class ListaMeusPedidosAbertos extends StatelessWidget {
  const ListaMeusPedidosAbertos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CardMeuPedidoAberto();
      },
    );
  }
}
