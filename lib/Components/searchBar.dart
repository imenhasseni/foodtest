import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide.none),
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
          hintText: 'Search',
          prefixIcon: SvgPicture.asset('assets/icons/search.svg',fit: BoxFit.scaleDown,)

      ),
    );

  }
}