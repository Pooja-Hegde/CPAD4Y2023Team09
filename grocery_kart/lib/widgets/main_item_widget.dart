import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainItemWidget extends StatefulWidget {
  const MainItemWidget({super.key});

  @override
  State<MainItemWidget> createState() => _MainItemWidgetState();
}

class _MainItemWidgetState extends State<MainItemWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}