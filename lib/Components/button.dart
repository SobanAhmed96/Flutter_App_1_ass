import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final bool isSelect;
  final VoidCallback onTap;

  const Button({
    super.key,
    required this.btnText,
    required this.isSelect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // for ripple effect transparency
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: isSelect
                ? Colors.black
                : const Color.fromARGB(255, 236, 212, 220),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: isSelect ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
