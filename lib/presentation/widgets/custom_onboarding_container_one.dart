import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rbc_control/core/constants/images.dart';

class CustomOnboardingContainerOne extends StatelessWidget {
  const CustomOnboardingContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const RadialGradient(
          center: Alignment(-1, -1),
          radius: 1.44,
          colors: <Color>[Color(0xFFD080FF), Color(0xFF6C5DD3)],
          stops: <double>[0, 1],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 415.h,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 40.h, 30.w, 39.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 278.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 38, 0, 0),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 6,
                                    sigmaY: 6,
                                  ),
                                  child: Container(
                                    width: 8.w,
                                    height: 8.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1AFFFFFF),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 2,
                                    sigmaY: 2,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0x1AFFFFFF),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: Container(
                                      width: 69.w,
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 8, 0, 9),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Skip',
                                        style: GoogleFonts.getFont(
                                          'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          height: 1.7,
                                          letterSpacing: -0.3,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(1, 0, 0, 9),
                        child: Opacity(
                          opacity: 0.1,
                          child: Container(
                            width: 220.w,
                            height: 230.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(110),
                            ),
                          ),
                        ),
                      ),
                      AppImages.onboarding1,
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(185, 0, 0, 0),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 6,
                          sigmaY: 6,
                        ),
                        child: Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                            color: const Color(0x1AFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 65.w, left: 40.w, top: 85.h, bottom: 60),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 84.h,
                          width: 84.w,
                          decoration: BoxDecoration(
                            color: const Color(0x1AFFFFFF),
                            borderRadius: BorderRadius.circular(500),
                          ),
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 6,
                                sigmaY: 6,
                              ),
                            ),
                          ),
                        ),
                        AppImages.onboarding1TopRight,
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 66.h,
                              width: 66.w,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(40, 255, 255, 255),
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 6,
                                    sigmaY: 6,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '🌲',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 36.h,
                                height: 1.2.h,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
