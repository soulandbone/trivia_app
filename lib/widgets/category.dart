import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class Category extends StatelessWidget {
  final String title;
  final String image;

  const Category({required this.title, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        elevation: 8,
        shadowColor: Colors.white54,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.deepOrange.withOpacity(0.7),
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                title,
                style: AppStyles.cardTitle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    fontSize: 20),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: SizedBox(
                    height: 100,
                    width: 120,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ));
  }
}
