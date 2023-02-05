import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/constants.dart';
import '../screens/demoData.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.deliveryTime,
      required this.rating,
      required this.press,
      required this.location})
      : super(key: key);
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: press,
          child: SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: Image.asset(image),
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  location,
                  maxLines: 1,
                  style: const TextStyle(color: kBodyTextColor, fontSize: 18),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                  child: DefaultTextStyle(
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding / 2,
                              vertical: defaultPadding / 8),
                          decoration: const BoxDecoration(
                            color: kActiveColor,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Text(
                            rating.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        Text("$deliveryTime min"),
                        const Spacer(),
                        const CircleAvatar(
                          radius: 2,
                          backgroundColor: Color(0xff868686),
                        ),
                        const Spacer(),
                        const Text("Free delivery")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
