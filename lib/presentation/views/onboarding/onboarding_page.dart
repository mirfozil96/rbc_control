import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodels/onboarding_viewmodel.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(onboardingViewModelProvider);

    return Scaffold(
      body: Center(
        child: Text('Onboarding Page $pageIndex'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(onboardingViewModelProvider.notifier).nextPage();
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';

// class OnboardingPage extends StatefulWidget {
//   const OnboardingPage({super.key});

//   @override
//   State<OnboardingPage> createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   backgroundColor: Colors.white,
//     //   body: Container(
//     //     decoration: BoxDecoration(
//     //   color: Color(0xFFFFFFFF),
//     //   borderRadius: BorderRadius.circular(32),
//     //     ),
//     //     child: Container(
//     //   padding: EdgeInsets.fromLTRB(28.8, 43, 28.8, 44),
//     //   child: Stack(
//     //     clipBehavior: Clip.none,
//     //     children: [
//     //       Column(
//     //         mainAxisAlignment: MainAxisAlignment.start,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: [
//     //           Container(
//     //             margin: EdgeInsets.fromLTRB(0, 0, 0, 391),
//     //             child: Align(
//     //               alignment: Alignment.topRight,
//     //               child: Text(
//     //                 'Skip',
//     //                 style: GoogleFonts.getFont(
//     //                   'DM Sans',
//     //                   fontWeight: FontWeight.w400,
//     //                   fontSize: 16,
//     //                   color: Color(0xFFFD6B22),
//     //                 ),
//     //               ),
//     //             ),
//     //           ),
//     //           Container(
//     //             margin: EdgeInsets.fromLTRB(0, 0, 11, 18),
//     //             child: Text(
//     //               'Easy Process',
//     //               style: GoogleFonts.getFont(
//     //                 'DM Sans',
//     //                 fontWeight: FontWeight.w700,
//     //                 fontSize: 36,
//     //                 height: 1.3,
//     //                 letterSpacing: -1.6,
//     //                 color: Color(0xFF1B1D21),
//     //               ),
//     //             ),
//     //           ),
//     //           Container(
//     //             margin: EdgeInsets.fromLTRB(10.3, 0, 21.5, 80),
//     //             child: Text(
//     //               'Find all your house needs in one place.  We provide every service to make your home experience smooth.',
//     //               textAlign: TextAlign.center,
//     //               style: GoogleFonts.getFont(
//     //                 'DM Sans',
//     //                 fontWeight: FontWeight.w400,
//     //                 fontSize: 16,
//     //                 height: 1.6,
//     //                 letterSpacing: -0.4,
//     //                 color: Color(0x80000000),
//     //               ),
//     //             ),
//     //           ),
//     //           Container(
//     //             margin: EdgeInsets.fromLTRB(0, 0, 10.2, 26),
//     //             child: SizedBox(
//     //               width: 56,
//     //               child: Row(
//     //                 mainAxisAlignment: MainAxisAlignment.start,
//     //                 crossAxisAlignment: CrossAxisAlignment.start,
//     //                 children: [
//     //                   Container(
//     //                     decoration: BoxDecoration(
//     //                       color: Color(0xFFFD6B22),
//     //                       borderRadius: BorderRadius.circular(20),
//     //                     ),
//     //                     child: Container(
//     //                       width: 28,
//     //                       height: 9,
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     decoration: BoxDecoration(
//     //                       color: Color(0xFFD9D9D9),
//     //                       borderRadius: BorderRadius.circular(4.5),
//     //                     ),
//     //                     child: Container(
//     //                       width: 9,
//     //                       height: 9,
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     decoration: BoxDecoration(
//     //                       color: Color(0xFFD9D9D9),
//     //                       borderRadius: BorderRadius.circular(4.5),
//     //                     ),
//     //                     child: Container(
//     //                       width: 9,
//     //                       height: 9,
//     //                     ),
//     //                   ),
//     //                 ],
//     //               ),
//     //             ),
//     //           ),
//     //           Container(
//     //             margin: EdgeInsets.fromLTRB(0, 0, 11.2, 0),
//     //             child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Color(0xFFFD6B22),
//     //                 borderRadius: BorderRadius.circular(16),
//     //               ),
//     //               child: Container(
//     //                 width: 295,
//     //                 padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
//     //                 child: 
//     //                 Text(
//     //                   'Next',
//     //                   style: GoogleFonts.getFont(
//     //                     'DM Sans',
//     //                     fontWeight: FontWeight.w700,
//     //                     fontSize: 14,
//     //                     height: 1.7,
//     //                     letterSpacing: -0.3,
//     //                     color: Color(0xFFFFFFFF),
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //       Positioned(
//     //         left: -28.8,
//     //         right: -28.8,
//     //         top: -74,
//     //         child: Container(
//     //           decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(32),
//     //             gradient: const RadialGradient(
//     //               center: Alignment(-1, -1),
//     //               radius: 1.44,
//     //               colors: <Color>[Color(0xFFD080FF), Color(0xFF6C5DD3)],
//     //               stops: <double>[0, 1],
//     //             ),
//     //           ),
//     //           child: SizedBox(
//     //             width: 375,
//     //             height: 437,
//     //             child: Container(
//     //               padding: EdgeInsets.fromLTRB(30, 0, 30, 39),
//     //               child: Column(
//     //                 mainAxisAlignment: MainAxisAlignment.start,
//     //                 crossAxisAlignment: CrossAxisAlignment.center,
//     //                 children: [
//     //                   Container(
//     //                     margin: EdgeInsets.fromLTRB(0, 0, 0, 27),
//     //                     child: Align(
//     //                       alignment: Alignment.topRight,
//     //                       child: SizedBox(
//     //                         width: 278,
//     //                         child: Row(
//     //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //                           crossAxisAlignment: CrossAxisAlignment.start,
//     //                           children: [
//     //                             Container(
//     //                               margin: EdgeInsets.fromLTRB(0, 38, 0, 0),
//     //                               child: ClipRect(
//     //                                 child: BackdropFilter(
//     //                                   filter: ImageFilter.blur(
//     //                                     sigmaX: 6,
//     //                                     sigmaY: 6,
//     //                                   ),
//     //                                   child: Container(
//     //                                     decoration: BoxDecoration(
//     //                                       color: Color(0x1AFFFFFF),
//     //                                       borderRadius: BorderRadius.circular(4),
//     //                                     ),
//     //                                     child: Container(
//     //                                       width: 8,
//     //                                       height: 8,
//     //                                     ),
//     //                                   ),
//     //                                 ),
//     //                               ),
//     //                             ),
//     //                             Container(
//     //                               margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
//     //                               child: ClipRect(
//     //                                 child: BackdropFilter(
//     //                                   filter: ImageFilter.blur(
//     //                                     sigmaX: 2,
//     //                                     sigmaY: 2,
//     //                                   ),
//     //                                   child: Container(
//     //                                     decoration: BoxDecoration(
//     //                                       color: Color(0x1AFFFFFF),
//     //                                       borderRadius: BorderRadius.circular(32),
//     //                                     ),
//     //                                     child: Container(
//     //                                       width: 69,
//     //                                       padding: EdgeInsets.fromLTRB(0, 8, 0, 9),
//     //                                       child: 
//     //                                       Text(
//     //                                         'Skip',
//     //                                         style: GoogleFonts.getFont(
//     //                                           'DM Sans',
//     //                                           fontWeight: FontWeight.w700,
//     //                                           fontSize: 14,
//     //                                           height: 1.7,
//     //                                           letterSpacing: -0.3,
//     //                                           color: Color(0xFFFFFFFF),
//     //                                         ),
//     //                                       ),
//     //                                     ),
//     //                                   ),
//     //                                 ),
//     //                               ),
//     //                             ),
//     //                           ],
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: EdgeInsets.fromLTRB(1, 0, 0, 9),
//     //                     child: Opacity(
//     //                       opacity: 0.1,
//     //                       child: Container(
//     //                         decoration: BoxDecoration(
//     //                           color: Color(0xFFFFFFFF),
//     //                           borderRadius: BorderRadius.circular(110),
//     //                         ),
//     //                         child: Container(
//     //                           width: 220,
//     //                           height: 220,
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: EdgeInsets.fromLTRB(185, 0, 0, 0),
//     //                     child: ClipRect(
//     //                       child: BackdropFilter(
//     //                         filter: ImageFilter.blur(
//     //                           sigmaX: 6,
//     //                           sigmaY: 6,
//     //                         ),
//     //                         child: Container(
//     //                           decoration: BoxDecoration(
//     //                             color: Color(0x1AFFFFFF),
//     //                             borderRadius: BorderRadius.circular(12),
//     //                           ),
//     //                           child: Container(
//     //                             width: 24,
//     //                             height: 24,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                 ],
//     //               ),
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //       Positioned(
//     //         right: -35.8,
//     //         top: 65,
//     //         child: Container(
//     //           decoration: const BoxDecoration(
//     //             image: DecorationImage(
//     //               fit: BoxFit.cover,
//     //               image: NetworkImage(
//     //                 'assets/images/converted_1.png',
//     //               ),
//     //             ),
//     //           ),
//     //           child: SizedBox(
//     //             width: 388,
//     //             height: 232,
//     //             child: Container(
//     //               padding: const EdgeInsets.fromLTRB(36, 1, 0, 0),
//     //               child: Column(
//     //                 mainAxisAlignment: MainAxisAlignment.start,
//     //                 crossAxisAlignment: CrossAxisAlignment.start,
//     //                 children: [
//     //                   Container(
//     //                     margin: const EdgeInsets.fromLTRB(0, 0, 40, 19),
//     //                     child: Align(
//     //                       alignment: Alignment.topCenter,
//     //                       child: ClipRect(
//     //                         child: BackdropFilter(
//     //                           filter: ImageFilter.blur(
//     //                             sigmaX: 6,
//     //                             sigmaY: 6,
//     //                           ),
//     //                           child: Container(
//     //                             decoration: BoxDecoration(
//     //                               color: const Color(0x1AFFFFFF),
//     //                               borderRadius: BorderRadius.circular(6),
//     //                             ),
//     //                             child: Container(
//     //                               width: 12,
//     //                               height: 12,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
//     //                     child: Align(
//     //                       alignment: Alignment.topLeft,
//     //                       child: ClipRect(
//     //                         child: BackdropFilter(
//     //                           filter: ImageFilter.blur(
//     //                             sigmaX: 6,
//     //                             sigmaY: 6,
//     //                           ),
//     //                           child: Container(
//     //                             decoration: BoxDecoration(
//     //                               color: const Color(0x1AFFFFFF),
//     //                               borderRadius: BorderRadius.circular(6),
//     //                             ),
//     //                             child: Container(
//     //                               width: 12,
//     //                               height: 12,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: const EdgeInsets.fromLTRB(296, 0, 0, 62),
//     //                     child: Align(
//     //                       alignment: Alignment.topCenter,
//     //                       child: ClipRect(
//     //                         child: BackdropFilter(
//     //                           filter: ImageFilter.blur(
//     //                             sigmaX: 6,
//     //                             sigmaY: 6,
//     //                           ),
//     //                           child: Container(
//     //                             decoration: BoxDecoration(
//     //                               color: Color(0x1AFFFFFF),
//     //                               borderRadius: BorderRadius.circular(6),
//     //                             ),
//     //                             child: Container(
//     //                               width: 12,
//     //                               height: 12,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
//     //                     child: Align(
//     //                       alignment: Alignment.topLeft,
//     //                       child: ClipRect(
//     //                         child: BackdropFilter(
//     //                           filter: ImageFilter.blur(
//     //                             sigmaX: 6,
//     //                             sigmaY: 6,
//     //                           ),
//     //                           child: Container(
//     //                             decoration: BoxDecoration(
//     //                               color: Color(0x1AFFFFFF),
//     //                               borderRadius: BorderRadius.circular(3),
//     //                             ),
//     //                             child: Container(
//     //                               width: 6,
//     //                               height: 6,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                 ],
//     //               ),
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //       Positioned(
//     //         left: 9.2,
//     //         top: 238,
//     //         child: ClipRect(
//     //           child: BackdropFilter(
//     //             filter: ImageFilter.blur(
//     //               sigmaX: 6,
//     //               sigmaY: 6,
//     //             ),
//     //             child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Color(0x1AFFFFFF),
//     //                 borderRadius: BorderRadius.circular(33),
//     //               ),
//     //               child: Container(
//     //                 height: 66,
//     //                 padding: EdgeInsets.fromLTRB(15, 10, 15, 13),
//     //                 child: 
//     //                 Container(
//     //                   decoration: const BoxDecoration(
//     //                     boxShadow: [
//     //                       BoxShadow(
//     //                         color: Color(0x48000000),
//     //                         offset: Offset(0, 12),
//     //                         blurRadius: 8,
//     //                       ),
//     //                     ],
//     //                   ),
//     //                   child: Text(
//     //                     '🌲',
//     //                     style: GoogleFonts.getFont(
//     //                       'Roboto',
//     //                       fontWeight: FontWeight.w400,
//     //                       fontSize: 36,
//     //                       height: 1.2,
//     //                       color: Color(0xFF000000),
//     //                     ),
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //       Positioned(
//     //         right: 29.2,
//     //         top: 44,
//     //         child: ClipRect(
//     //           child: BackdropFilter(
//     //             filter: ImageFilter.blur(
//     //               sigmaX: 6,
//     //               sigmaY: 6,
//     //             ),
//     //             child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: const Color(0x1AFFFFFF),
//     //                 borderRadius: BorderRadius.circular(42),
//     //               ),
//     //               child: Container(
//     //                 width: 84,
//     //                 height: 84,
//     //                 padding: const EdgeInsets.fromLTRB(18, 17.9, 19, 17.3),
//     //                 child: 
//     //                 Container(
//     //                   width: 47,
//     //                   height: 48.9,
//     //                   child: SizedBox(
//     //                     width: 47,
//     //                     height: 48.9,
//     //                     child: SvgPicture.network(
//     //                       'assets/vectors/image_10_x2.svg',
//     //                     ),
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     //     ),
//     //   ),
//     // );
//     return const Scaffold(
//       body: Center(
//         child: Text("ONBOARDING"),
//       ),
//     );
//   }
// }