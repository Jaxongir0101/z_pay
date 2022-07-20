import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/faqPages/faq_page.dart';


Widget profileScrollPage(context) {
  String name = "Marina Volkova";
  String icon_profile =
      "assets/images/profile/profile_icons/ic_person_box_in.png";
  String icon_prize = "assets/images/profile/profile_icons/ic_gift.png";
  String icon_faq = "assets/images/profile/profile_icons/ic_faq.png";
  String icon_info = "assets/images/profile/profile_icons/ic_about.png";
  String icon_logout = "assets/images/profile/profile_icons/ic_exit.png";

  return SingleChildScrollView(
    child: Stack(
      children: [
        // SizedBox(height: 20,),
        Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xff878B9A)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/images/profile/profile_icons/ic_official.png",
                          scale: 1.8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "ID: 233256",
                        style: TextStyle(fontSize: 16, color: Color(0xff32B179)),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "0 cym",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                        color: Color(0xff12154C)
                      ),
                    ),
                  ),
                  const Text(
                    "Лицевой счет",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Mont",
                        color: Color(0xff12154C)

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            "Личная информация",
                            style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff121F3E)),
                          ),
                          leading: Image.asset(
                            'assets/images/profile/person.png',
                            height: 30,
                            width: 30,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Color(0xff33409E),
                            size: 28,
                          ),
                        ),
                        const Divider(
                          indent: 18,
                          endIndent: 18,
                        ),
                        ListTile(
                          title: const Text(
                            "Потратить бонусы",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                           leading: Image.asset(
                            'assets/images/profile/bonus.png',
                            height: 30,
                            width: 30,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Color(0xff33409E),
                            size: 28,
                          ),
                        ),
                        const Divider(
                          indent: 18,
                          endIndent: 18,
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext) => FaqPage()));
                          },
                          title: const Text(
                            "Частно задаваемые вопросы",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                            leading: Image.asset(
                            'assets/images/profile/faq.png',
                            height: 30,
                            width: 30,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Color(0xff33409E),
                            size: 28,
                          ),
                        ),
                        const Divider(
                          indent: 18,
                          endIndent: 18,
                        ),
                        ListTile(
                          title: const Text(
                            "О приложении",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                           leading: Image.asset(
                            'assets/images/profile/abut.png',
                            height: 30,
                            width: 30,
                          ),
                           trailing: const Icon(
                            Icons.chevron_right,
                            color: Color(0xff33409E),
                            size: 28,
                          ),
                        ),
                        const Divider(
                          indent: 18,
                          endIndent: 18,
                        ),
                        ListTile(
                          title: const Text(
                            "Личная информация",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                           leading: Image.asset(
                            'assets/images/profile/exit.png',
                            height: 30,
                            width: 30,
                          ),
                           trailing: const Icon(
                            Icons.chevron_right,
                            color: Color(0xff33409E),
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: const [
            SizedBox(
              height: 100,
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profile/profileTab_image.png"),
                  radius: 48,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
