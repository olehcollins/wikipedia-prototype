import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize; // Required for PreferredSizeWidget
  final bool _backArrow;

  CustomAppBar({Key? key, bool backArrow = false})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        _backArrow = backArrow,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: _backArrow, // Removes back arrow
      backgroundColor: Colors.blue[300],
      elevation: 4.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center: Logo
          Expanded(
            child: Center(
              child: SvgPicture.asset('assets/logo.svg'),
            ),
          ),
          // Right: Profile Icon
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}