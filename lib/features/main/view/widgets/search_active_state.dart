
import 'package:flutter/material.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_search_result_item.dart';

class SearchActiveState extends StatelessWidget {
  const SearchActiveState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const CustomSearchResultItem(),
      separatorBuilder: (context, index) => Container(
        width: double.infinity,
        height: screenSize.height * .01,
        margin: EdgeInsets.symmetric(
          vertical: screenSize.height * .01,
        ),
        color: Colors.grey.withOpacity(.1),
      ),
      itemCount: 10,
    );
  }
}
