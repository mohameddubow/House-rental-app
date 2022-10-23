import 'package:flutter/material.dart';



class ContentIntro extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HAALAND',
            style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'WOOOOOOOW',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            '500 sqft',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$4455',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Fer Month',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
