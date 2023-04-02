import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavouriteButton extends StatefulWidget {
  bool isFav;
  FavouriteButton({super.key, required this.isFav});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState() {
          widget.isFav = !widget.isFav;
        }
      },
      icon: Icon(
        widget.isFav ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: heartColor,
      ),
    );
  }
}
