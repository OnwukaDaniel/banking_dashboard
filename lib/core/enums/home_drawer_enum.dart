import 'package:banking_dashboard/imports.dart';

/// Most of these DrawerSubItem's Images could not be loaded as svgs, they were corrupted from the figma file
enum HomeDrawerEnum {
  account(
    name: 'Account',
    subItems: [
      DrawerSubItem(name: 'Your Profile', asset: 'assets/images/person.png'),
      DrawerSubItem(name: 'Account Verification', asset: 'assets/images/verify.png'),
      DrawerSubItem(name: 'Inbox', asset: 'assets/images/inbox.png'),
      DrawerSubItem(name: 'Notification', asset: 'assets/images/notification2.png'),
      DrawerSubItem(name: 'Settings', asset: 'assets/images/setting.png'),
    ],
  ),

  finances(
    name: 'Finances',
    subItems: [
      DrawerSubItem(name: 'Transaction Limits', asset: 'assets/images/transaction.png'),
      DrawerSubItem(name: 'Transaction History', asset: 'assets/images/timer.png'),
      DrawerSubItem(name: 'Recipients', asset: 'assets/images/person3.png'),
    ],
  ),

  security(
    name: 'Security',
    subItems: [
      DrawerSubItem(name: 'Change Password', asset: 'assets/images/password.png'),
      DrawerSubItem(name: 'Login Security OTP', asset: 'assets/images/login_otp.png'),
      DrawerSubItem(name: 'KYC', asset: 'assets/images/kyc_scan.png'),
      DrawerSubItem(name: 'Fingerprint', asset: 'assets/images/fingerprint.png'),
      DrawerSubItem(name: 'Two Factor Authentication', asset: 'assets/images/two_factor.png'),
      DrawerSubItem(name: 'Change your PIN', asset: 'assets/images/unlock.png'),
      DrawerSubItem(name: 'Devices and Sessions', asset: 'assets/images/device_sessions.png'),
    ],
  ),

  others(
    name: 'Others',
    subItems: [
      DrawerSubItem(name: 'Get Help', asset: 'assets/images/support_24.png'),
      DrawerSubItem(name: 'Our Rates', asset: 'assets/images/convert.png'),
      DrawerSubItem(name: 'App Language', asset: 'assets/images/globe.png'),
      DrawerSubItem(name: 'Affiliate and Referrals', asset: 'assets/images/affiliate.png'),
    ],
  );

  final String name;
  final List<DrawerSubItem> subItems;

  const HomeDrawerEnum({
    required this.name,
    required this.subItems,
  });
}


