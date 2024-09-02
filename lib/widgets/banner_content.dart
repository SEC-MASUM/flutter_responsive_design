import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/utils/screent_utils.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceType = ScreentUtils.getDeviceType(size.width);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: deviceType == DeviceType.desktop
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        const Text(
          'FLUTTER WEB.',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'THE BASICS',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layouts, Deploying, Font Changes, Hover FuSizedBoxty, Modals and more.',
          textAlign: deviceType == DeviceType.desktop
              ? TextAlign.start
              : TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
          softWrap: true, // Allow text to wrap
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}