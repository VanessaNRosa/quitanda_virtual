import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final String status;
  final bool isOverdue;

  const OrderStatusWidget({
    required this.isOverdue,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StatusDot(isActive: true, title: "Pedido confirmado"),
        _StatusDot(isActive: false, title: "Pagamento"),
      ],
    );
  }
}

class _StatusDot extends StatelessWidget {
  final bool isActive;
  final String title;

  const _StatusDot({required this.title, required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Dot
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: CustomColors.customSwatchColor),
            color: isActive
                ? CustomColors.customSwatchColor
                : Colors.transparent,
          ),
          child: isActive
              ? const Icon(Icons.check, size: 13, color: Colors.white)
              : const SizedBox.shrink(),
        ),
        SizedBox(width: 5,),
        
        //Texto
        Expanded(child: Text(title)),
      ],
    );
  }
}
