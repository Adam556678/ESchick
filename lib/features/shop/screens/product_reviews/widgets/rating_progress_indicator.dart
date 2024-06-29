import 'package:e_commerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_reviews.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text("4.8", style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              AppRatingIndicator(text: '5', value: 1.0),
              AppRatingIndicator(text: '4', value: 0.8),
              AppRatingIndicator(text: '3', value: 0.6),
              AppRatingIndicator(text: '2', value: 0.4),
              AppRatingIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}