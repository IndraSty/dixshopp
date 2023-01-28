import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9.5),
      width: double.infinity,
      height: 60,
      child: Material(
        elevation: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search Item...',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset('assets/icon/Search.svg'),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  child: SvgPicture.asset('assets/icon/Filter.svg'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Constant.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
