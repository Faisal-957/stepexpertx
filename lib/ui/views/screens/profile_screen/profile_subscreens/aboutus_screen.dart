import 'package:flutter/material.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 110),

                Text(
                  "About Us",
                  style: style16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Norem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis., ",
              style: style16.copyWith(
                fontWeight: FontWeight.w300,
                color: blackColor,
              ),
            ),
            SizedBox(height: 30),
            Text(
              " Our Mission",
              style: style18.copyWith(
                color: Color(0xffDC2D58),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),

            Text(
              "Norem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. ",
              style: style16.copyWith(
                fontWeight: FontWeight.w300,
                color: blackColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Why Choose Us',
              style: style18.copyWith(
                color: Color(0xfffDC2D8),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Text(
              "Norem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. ",
              style: style16.copyWith(
                fontWeight: FontWeight.w300,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
