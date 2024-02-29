import 'package:aplikasi_nonton_id/config/costum_colors.dart';
import 'package:aplikasi_nonton_id/data/promo_data.dart';
import 'package:aplikasi_nonton_id/widgets/appbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../data/sedangtayang_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int promoIndex = 0;
  int isShowingIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.backgrounColor,
      appBar: AppBar(
        leading: ProfilWidget(),
        title: LocationWidget(),
        centerTitle: true,
        actions: [
          NotificationWidget(),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CarouselSlider(
            items: promo.map(
              (promoModel) {
                return Container(
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(134, 122, 210, 1),
                    gradient:const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(134, 122, 210, 1),
                        Color.fromRGBO(134, 122, 210, 0.19),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 7.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0), // Offset ke bawah
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      promoModel.title,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Mulai',
                                      style: TextStyle(
                                        fontSize: 5,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Rp.',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromRGBO(242, 201, 76, 1),
                                          ),
                                        ),
                                        Text(
                                          promoModel.price.toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromRGBO(242, 201, 76, 1),
                                          ),
                                        ),
                                        Text(
                                          '/ 30 Hari',
                                          style: TextStyle(
                                            fontSize: 7,
                                            color:
                                                Color.fromRGBO(242, 201, 76, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Color.fromRGBO(242, 201, 76, 1),
                                            Color.fromRGBO(255, 228, 148, 1),
                                          ],
                                        ),
                                      ),
                                      child: TextButton(
                                        child: Text(
                                          'Klik disini',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(promoModel.imageUrl!),
                    ],
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              clipBehavior: Clip.none,
              height: 163,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    promoIndex = index;
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          AnimatedSmoothIndicator(
            activeIndex: promoIndex,
            count: promo.length,
            effect: ExpandingDotsEffect(
              dotWidth: 16,
              dotHeight: 10,
              spacing: 9,
              expansionFactor: 2,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sedang Tayang',
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Lihat semua >',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                    ),
                  ),
                  onTap: (){},
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
