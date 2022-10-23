import 'package:flutter/material.dart';
import '/screen/home/widget/welcome_text.dart';
import '/screen/home/widget/search_input.dart';
import 'carousel.dart';

class First_tab_page extends StatelessWidget {
  const First_tab_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeText(),
        SearchInput(),
        Divider(
          height: 30,
          thickness: 1.5,
          color: Colors.black26,
        ),
        SizedBox(
          height: 375.0,
          width: 357.0,
          child: customCarousel(),
        ),
      ],
    );
  }
}
