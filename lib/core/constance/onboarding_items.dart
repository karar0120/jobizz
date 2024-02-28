import 'package:jobizz/core/constance/images_consts.dart';
import 'package:jobizz/core/constance/string_consts.dart';
import 'package:jobizz/feature/onboarding/model/onboarding_models.dart';

bool isLast = false;
List<OnBoardingModel> onBoardingItems = [
  OnBoardingModel(
    image: ImageConsts.onboarding1,
    title: StringConsts.searchYourJob,
    description: StringConsts
        .figureOutYourTopFivePrioritiesWhetherItIsCompanyCultureSalary,
  ),
  OnBoardingModel(
    image: ImageConsts.onboarding2,
    title: StringConsts.browseJobsList,
    description: StringConsts
        .ourJobListIncludeSeveralIndustriesSoYouCanFindTheBestJobForYou,
  ),
  OnBoardingModel(
    image: ImageConsts.onboarding3,
    title: StringConsts.applyToBestJobs,
    description:
        StringConsts.youCanApplyToYourDesirableJobsVeryQuicklyAndEasilyWithEase,
  ),
  OnBoardingModel(
    image: ImageConsts.onboarding4,
    title: StringConsts.makeYourCareer,
    description:
        StringConsts.weHelpYouFindYourDreamJobBasedOnYourSkillsetLocationDemand,
  )
];
