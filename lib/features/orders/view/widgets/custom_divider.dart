
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: screenSize.height * .02,
      ),
      width: screenSize.width,
      height: screenSize.height * .005,
      color: Colors.grey.withOpacity(.1),
    );
  }
}
