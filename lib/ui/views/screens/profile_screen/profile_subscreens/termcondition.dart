import 'package:flutter/material.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';

class Termcondition extends StatelessWidget {
  const Termcondition({super.key});

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
                  "Terms & Conditions",
                  style: style16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text(
              "Norem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.  ",
              softWrap: true,
              overflow: TextOverflow.visible,
              style: style16.copyWith(
                fontWeight: FontWeight.w300,
                color: blackColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              " Changes to these Terms & Conditions",
              style: style18.copyWith(
                color: Color(0xffDC2D58),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Norem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. ",
              softWrap: true,

              overflow: TextOverflow.visible,

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
