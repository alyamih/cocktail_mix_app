import 'package:cocktail_mix_app/pages/home_page.dart';
import 'package:cocktail_mix_app/pages/show_screen.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ESelectedPage page = ESelectedPage.settingsPage;
  @override
  Widget build(BuildContext context) {
    return getContent();
  }

  Widget getContent() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(18, 60, 18, 0),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Settings',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 32)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF333333),
                borderRadius: BorderRadius.circular(32)),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // page = ESelectedPage.policyPage;
                    // setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/share.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Share with friends',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ReadTermsOrPrivacyScreenView(
                                link: 'google.com',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/privacy.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Privacy Policy',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ReadTermsOrPrivacyScreenView(
                                link: 'google.com',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/terms.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Terms of Use',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // page = ESelectedPage.termsPage;
                    // setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/subscription.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Subscription info',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // page = ESelectedPage.ratePage;
                    // setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/logout.png',
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('Logout',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
