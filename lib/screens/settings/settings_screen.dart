import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(child: Text('Settings', style: TextStyle(color: AppColors.blue),)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading:
              SvgPicture.asset('assets/images/icons/privacy-policy.svg'),
              title: Text(
                'Privacy Policy',
                style: const TextStyle(
                    color: AppColors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {},
            ),
            ListTile(
              leading:
              SvgPicture.asset('assets/images/icons/terms-of-use.svg'),
              title: Text(
                'Terms of use',
                style: const TextStyle(
                    color: AppColors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/icons/subscribtion-to.svg'),
              title: Text(
                'Subscription info',
                style: const TextStyle(
                    color: AppColors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/icons/rate-app.svg'),
              title: Text(
                'Rate app',
                style: const TextStyle(
                    color: AppColors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
