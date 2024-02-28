import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobizz/core/constance/Sizes.dart';
import 'package:jobizz/core/constance/onboarding_items.dart';
import 'package:jobizz/core/constance/string_consts.dart';
import 'package:jobizz/core/helper/extensions.dart';
import 'package:jobizz/core/helper/spacing.dart';
import 'package:jobizz/core/routing/routes.dart';
import 'package:jobizz/core/theming/color.dart';
import 'package:jobizz/core/theming/styles.dart';
import 'package:jobizz/core/widget/app_text_button.dart';
import 'package:jobizz/feature/onboarding/widget/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingContent extends StatefulWidget {
  const OnBoardingContent({super.key});

  @override
  State<OnBoardingContent> createState() => _OnBoardingContentState();
}

class _OnBoardingContentState extends State<OnBoardingContent> {
  @override
  Widget build(BuildContext context) {
    var onBoardingController = PageController();
    return Padding(
        padding: const EdgeInsets.all(PaddingConsts.p30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  if (index == onBoardingItems.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => OnBoardingItem(
                  onBoarding: onBoardingItems[index],
                ),
                itemCount: onBoardingItems.length,
                controller: onBoardingController,
                physics: const BouncingScrollPhysics(),
              ),
            ),
            verticalSpace(SizeConsts.s30),
            SmoothPageIndicator(
              count: onBoardingItems.length,
              controller: onBoardingController,
              effect: const ExpandingDotsEffect(
                dotColor: ColorsManager.lightGray,
                activeDotColor: ColorsManager.mainBlue,
                dotHeight: 10,
                expansionFactor: 4,
                dotWidth: 10,
                spacing: 5.0,
              ),
            ),
            verticalSpace(SizeConsts.s40),
            isLast == false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextButton(
                          buttonWidth: SizeConsts.s120.w,
                          backgroundColor: ColorsManager.white,
                          buttonText: StringConsts.skip,
                          onPressed: () {
                            context.pushNamedAndRemoveUntil(Routes.loginScreen,
                                predicate: (route) => false);
                          },
                          textStyle: TextStyles.font16GrayMedium),
                      AppTextButton(
                          buttonWidth: SizeConsts.s150.w,
                          buttonText: StringConsts.next,
                          onPressed: () {
                            onBoardingController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOutCubicEmphasized,
                            );
                          },
                          textStyle: TextStyles.font16WhiteMedium),
                    ],
                  )
                : AppTextButton(
                    buttonText: StringConsts.explore,
                    onPressed: () {
                      context.pushNamedAndRemoveUntil(Routes.loginScreen,
                          predicate: (route) => false);
                    },
                    textStyle: TextStyles.font16WhiteMedium),
            verticalSpace(SizeConsts.s50),
          ],
        ));
  }
}
