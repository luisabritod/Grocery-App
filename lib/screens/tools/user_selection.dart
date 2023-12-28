import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserSelection extends StatefulWidget {
  const UserSelection(
      {super.key,
      required this.iconSelection,
      required this.primaryText,
      required this.secondaryText,
      required this.onTap});

  final IconData iconSelection;
  final String primaryText;
  final String secondaryText;
  final VoidCallback onTap;

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(widget.iconSelection),
              const SizedBox(
                width: 34,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.primaryText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(widget.secondaryText),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: const Icon(IconlyLight.arrowRight2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
