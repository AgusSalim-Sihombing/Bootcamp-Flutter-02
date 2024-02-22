import 'package:aplikasi_nonton_id/config/costum_colors.dart';
import 'package:aplikasi_nonton_id/data/sliderhome_data.dart';
import 'package:aplikasi_nonton_id/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _slideController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.backgrounColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ProfilWidget(),
                ),
                SizedBox(
                  child: LocationWidget(),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: NotificationWidget(),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  child: PageView(
                    controller: _slideController,
                    children: [
                      Page1(),
                      Page2(),
                    ],
                  ),
                ),
                SmoothPageIndicator(
                  controller: _slideController,
                  count: 4,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.length,
      separatorBuilder: (_, __) => const SizedBox(width: 20.0),
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        final list = data[index];
        return Container(
          height: 163,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0,3),
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Text(
                list.title
              )
            ],
          ),
        );
      },
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.length,
      separatorBuilder: (_, __) => const SizedBox(width: 20.0),
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        final list = data[index];
        return Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0,3),
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Text(
                  list.title
              )
            ],
          ),
        );
      },
    );
  }
}