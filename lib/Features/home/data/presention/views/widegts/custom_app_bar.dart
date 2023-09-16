import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/search/presention/views/search_view.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesLogo,
          height: 16.1,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(SearchView.routeName);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            )),
      ],
    );
  }
}
