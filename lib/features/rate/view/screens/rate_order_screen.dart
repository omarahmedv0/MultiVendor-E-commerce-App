import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

// ignore: must_be_immutable
class RateOrderScreen extends StatefulWidget {
  const RateOrderScreen({super.key});

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  double rate = 3;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                icon: const Icon(
                  Icons.close,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          Text(
            'What could’ve been better?',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            unratedColor: Colors.grey.withOpacity(.2),
            itemPadding: const EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            itemBuilder: (context, _) => const Icon(
              Icons.star_rounded,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              rate = rating;
              setState(() {});
            },
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          Text(
            checkRatingMessage(rate),
            style: AppFont.getSubtitle1(
              context,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: screenSize.height * .04,
          ),
          CustomButton(
            text: 'Submit',
            isPadding: true,
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
        ],
      ),
    );
  }

  String checkRatingMessage(double rate) {
    if (rate < 2) {
      return 'Poor';
    } else if (rate < 3) {
      return 'Not good';
    } else if (rate < 4) {
      return 'Average';
    } else if (rate < 5) {
      return 'Very Good';
    } else {
      return 'Excellent';
    }
  }
}
