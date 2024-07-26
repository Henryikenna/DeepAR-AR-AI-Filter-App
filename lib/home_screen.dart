import 'dart:developer';

import 'package:deepar_flutter/deepar_flutter.dart';
import 'package:deepar_flutter_app/utils/filters.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// class _HomeScreenState extends State<HomeScreen> {
//   DeepArController deepArController = DeepArController();
//   int currentPage = 0;
//   final vp = PageController(viewportFraction: .24);
//   // Effects currentEffect = Effects.none;
//   bool isRecording = false;

//   @override
//   void initState() {
//     super.initState();

//     deepArController.initialize(
//       androidLicenseKey:
//           "f4e013cadd96e216709f87492289d0ecda5721b0ecd76325e42fc9c1b41a723ff54b1bb127e922bc",
//       iosLicenseKey:
//           "c7d585240cd0d5efdd377953c21acccfc6683eb3c413c851a3ad031c5fedef6326c7cf3ab254f0cc",
//       resolution: Resolution.high,
//     );
//   }


// //  DeepArController? deepArController;
// //   int currentPage = 0;
// //   bool isRecording = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _initializeDeepAr();
// //   }

// //   Future<void> _initializeDeepAr() async {
// //     deepArController = DeepArController();
// //     await deepArController.initialize(
// //       androidLicenseKey:
// //           "f4e013cadd96e216709f87492289d0ecda5721b0ecd76325e42fc9c1b41a723ff54b1bb127e922bc",
// //       iosLicenseKey:
// //           "c7d585240cd0d5efdd377953c21acccfc6683eb3c413c851a3ad031c5fedef6326c7cf3ab254f0cc",
// //       resolution: Resolution.high,
// //     );
// //     setState(() {});
// //   }

// //   @override
// //   void dispose() {
// //     deepArController.destroy();
// //     super.dispose();
// //   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: deepArController.isInitialized
//       //     ? Stack(
//       //         children: [
//       //           DeepArPreview(
//       //             deepArController,
//       //             // onViewCreated: (c) async {
//       //             //   deepArController = c;
//       //             //   setState(() {});
//       //             // },
//       //           ),
//       //           Align(
//       //             alignment: Alignment.bottomCenter,
//       //             child: Container(
//       //               padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
//       //               child: Column(
//       //                 mainAxisSize: MainAxisSize.min,
//       //                 mainAxisAlignment: MainAxisAlignment.end,
//       //                 children: [
//       //                   SingleChildScrollView(
//       //                     scrollDirection: Axis.horizontal,
//       //                     child: Wrap(
//       //                       spacing: 10,
//       //                       children: List.generate(
//       //                         filtersList.length,
//       //                         (index) {
//       //                           bool active = currentPage == index;
//       //                           return GestureDetector(
//       //                             onTap: () {
//       //                               currentPage = index;
//       //                               deepArController.switchEffect(filtersList[index]['filterPath']);
//       //                             },
//       //                             child: Container(
//       //                               margin: const EdgeInsets.all(5),
//       //                               width: active ? 40 : 30,
//       //                               height: active ? 50 : 30,
//       //                               alignment: Alignment.center,
//       //                               decoration: BoxDecoration(
//       //                                 color: active
//       //                                     ? Colors.deepPurple
//       //                                     : Colors.white,
//       //                                 shape: BoxShape.circle,
//       //                               ),
//       //                               child: Text(
//       //                                 // index.toString(),
//       //                                 filtersList[index]['filterName'],
//       //                                 textAlign: TextAlign.center,
//       //                                 style: TextStyle(
//       //                                   fontSize: active ? 16 : 14,
//       //                                   color: active
//       //                                       ? Colors.white
//       //                                       : Colors.black,
//       //                                   fontWeight: FontWeight.w600,
//       //                                 ),
//       //                               ),
//       //                             ),
//       //                           );
//       //                         },
//       //                       ),
//       //                     ),
//       //                   ),
//       //                 ],
//       //               ),
//       //             ),
//       //           )
//       //         ],
//       //       )
//       //     : const Center(child: CircularProgressIndicator.adaptive()),
//       body: Stack(
//         children: [
//           DeepArPreview(
//             deepArController,
//             // onViewCreated: (c) async {
//             //   deepArController = c;
//             //   setState(() {});
//             // },
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       deepArController.flipCamera();
//                       print(
//                           "Camera position: ${deepArController.cameraDirection.name}");
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: const BoxDecoration(
//                       color: Colors.black54,
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Icon(
//                       Icons.cameraswitch_outlined,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 25),
//                 Container(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Wrap(
//                           spacing: 10,
//                           children: List.generate(
//                             filtersList.length,
//                             (index) {
//                               bool active = currentPage == index;
//                               return GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     currentPage = index;
//                                     deepArController.switchEffect(
//                                         filtersList[index]['filterPath']);
//                                   });
//                                 },
//                                 child: Container(
//                                   // margin: const EdgeInsets.all(5),
//                                   // width: active ? 40 : 30,
//                                   // height: active ? 50 : 30,
//                                   padding: const EdgeInsets.symmetric(
//                                     vertical: 10,
//                                     horizontal: 10,
//                                   ),
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     color: active
//                                         ? Colors.deepPurple
//                                         : Colors.white,
//                                     // shape: BoxShape.circle,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Text(
//                                     // index.toString(),
//                                     filtersList[index]['filterName'],
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       fontSize: active ? 16 : 14,
//                                       color:
//                                           active ? Colors.white : Colors.black,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }




class _HomeScreenState extends State<HomeScreen> {
  DeepArController deepArController = DeepArController();
  int currentPage = 0;
  bool isRecording = false;

  @override
  void initState() {
    super.initState();
    _initializeDeepAr();
  }

  Future<void> _initializeDeepAr() async {
    await deepArController.initialize(
      androidLicenseKey:
          "f4e013cadd96e216709f87492289d0ecda5721b0ecd76325e42fc9c1b41a723ff54b1bb127e922bc",
      iosLicenseKey:
          "c7d585240cd0d5efdd377953c21acccfc6683eb3c413c851a3ad031c5fedef6326c7cf3ab254f0cc",
      resolution: Resolution.high,
    );
    print("Initialized Successfully");
    log("Initialized Successfully");
    setState(() {});
  }

  @override
  void dispose() {
    deepArController.destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: deepArController.isInitialized
          ? Stack(
              children: [
                DeepArPreview(deepArController),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            deepArController.flipCamera();
                            print("Camera position: ${deepArController.cameraDirection.name}");
                            log("Camera position: ${deepArController.cameraDirection.name}");
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.cameraswitch_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 10,
                            children: List.generate(
                              filtersList.length,
                              (index) {
                                bool active = currentPage == index;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentPage = index;
                                      deepArController.switchEffect(filtersList[index]['filterPath']);
                                      print("Current filter: ${filtersList[index]['filterName']}");
                                      log("Current filter: ${filtersList[index]['filterName']}");
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 10,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: active ? Colors.deepPurple : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      filtersList[index]['filterName'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: active ? 16 : 14,
                                        color: active ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}