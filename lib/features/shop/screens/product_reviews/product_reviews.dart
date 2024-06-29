import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Reviews & Rating'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use"),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // -- overall product ratings
              const OverallProductRating(),

              const AppRatingBarIndicator(rating: 4.5),
              Text("12,161", style: Theme.of(context).textTheme.bodySmall),

              const SizedBox(height: AppSizes.spaceBtwSections),

              // -- User Reviews List
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
