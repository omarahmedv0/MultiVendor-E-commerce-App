import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:talabat_clone/core/styles/app_font.dart';

import 'package:talabat_clone/features/main/view/widgets/search_active_state.dart';
import 'package:talabat_clone/features/main/view/widgets/search_empty_state.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * .04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * .02,
            ),
            SizedBox(
              height: screenSize.height * .05,
              child: TextField(
                style: AppFont.getCaptionFont(
                  context,
                  fontColor: Colors.black,
                ),
                cursorColor: Colors.black,
                //cursorHeight: 15,
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  suffixIcon: searchController.text.isEmpty
                      ? null
                      : InkWell(
                          onTap: () {
                            searchController.clear();
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                  hintText: 'Search food, groceries and more',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(.4),
                  ),
                  hintStyle: AppFont.getCaptionFont(context),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(.1),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * .03,
            ),
            if (searchController.text.isEmpty) const SearchEmptyState(),
            if (searchController.text.isNotEmpty) const SearchActiveState(),
          ],
        ),
      ),
    );
  }
}
