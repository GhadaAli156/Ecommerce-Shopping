import 'package:flutter/material.dart';
class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;

  const SizeButton({Key? key, required this.size, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: ChoiceChip(
        label: Text(size),
        selected: isSelected,
        selectedColor: Colors.red[100],
        onSelected: (bool selected) {},
      ),
    );
  }
}