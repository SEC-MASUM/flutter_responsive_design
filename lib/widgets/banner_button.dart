import 'package:flutter/material.dart';

class BannerButton extends StatelessWidget {
  const BannerButton({
    super.key, this.fullWidth = false,

  });

  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.maxFinite : null,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        child: const Text(
          'Join Course',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

