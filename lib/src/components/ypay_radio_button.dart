import 'package:flutter/material.dart';
import 'ypay_textstyle.dart';

class YPayRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String label;
  final ValueChanged<T?> onChanged;

  const YPayRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    
    return InkWell(
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? const Color(0xFF480052) : Colors.transparent,
              border: Border.all(
                color: const Color(0xFF480052),
                width: 1.5,
              ),
            ),
            child: isSelected
              ? const Icon(
                  Icons.check,
                  size: 14,
                  color: Colors.white,
                )
              : null,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: YpayTextStyle.subh2,
          ),
        ],
      ),
    );
  }
}
