import 'package:flutter/material.dart';
import 'package:food_app/components/RestaurantInfoMediumCard.dart';
import 'package:food_app/screens/constants.dart';
import 'package:food_app/screens/demoData.dart';

import '../components/image_carousel.dart';
import '../components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "Delivery To".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kActiveColor),
                ),
                const Text(
                  "San Fransisco",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      deliveryTime: demoMediumCardData[index]['deliveryTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                      location: demoMediumCardData[index]['location'],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: Image.asset("assets/banner.jpg"),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Picks",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      deliveryTime: demoMediumCardData[index]['deliveryTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                      location: demoMediumCardData[index]['location'],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
