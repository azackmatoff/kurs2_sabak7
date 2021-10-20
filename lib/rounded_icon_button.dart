import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final Widget child;
  final Function onTap;
  const RoundedIconButton({
    Key key,
    @required this.child,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 12.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onTap,
      child: child,
    );
  }
}
