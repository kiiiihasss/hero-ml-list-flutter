import 'package:flutter/material.dart';

class RoleChip extends StatelessWidget {
  final String role;

  const RoleChip({
    super.key,
    required this.role,
  });

  Color _roleColor() {
    if (role.contains('Fighter')) return Colors.orange;
    if (role.contains('Assassin')) return Colors.red;
    if (role.contains('Marksman')) return Colors.amber;
    if (role.contains('Tank')) return Colors.blue;
    if (role.contains('Mage')) return Colors.purple;

    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _roleColor().withOpacity(0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: _roleColor(),
          width: 1,
        ),
      ),
      child: Text(role),
    );
  }
}