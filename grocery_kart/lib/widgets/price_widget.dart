import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Text(
            'Rs.25',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Rs.30',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.lineThrough),
          ),
        ],
      ),
    );
  }
}
