import 'package:flutter/material.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedidos"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemBuilder: ,
        itemCount: ,

      ),
    );
  }
}