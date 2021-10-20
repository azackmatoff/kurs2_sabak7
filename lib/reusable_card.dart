import 'package:flutter/material.dart';

//Mutable, Immutable

class ReusableCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  final Function onTap;
  ReusableCard({
    this.bgColor,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          // color: Color(0xFF1d1e30), //Egerde decoration bar bolso, bul color berilbeyt
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
