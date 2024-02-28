import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/constance/Sizes.dart';
import 'package:jobizz/core/helper/spacing.dart';
import 'package:jobizz/core/theming/styles.dart';
import 'package:jobizz/feature/onboarding/model/onboarding_models.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel onBoarding;
  const OnBoardingItem({
    super.key,
    required this.onBoarding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Center(child: SvgPicture.asset(onBoarding.image))),
        Center(
            child: Text(
          onBoarding.title,
          style: TextStyles.font28BlackSemiBold,
        )),
        verticalSpace(SizeConsts.s20),
        Text(
          onBoarding.description,
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
