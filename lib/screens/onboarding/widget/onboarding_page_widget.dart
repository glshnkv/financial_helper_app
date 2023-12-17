import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';

class OnboardingPageWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final String urlImage;

  const OnboardingPageWidget(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.urlImage});

  @override
  State<OnboardingPageWidget> createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            widget.urlImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(33),
            child: Center(
              child: Column(
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
