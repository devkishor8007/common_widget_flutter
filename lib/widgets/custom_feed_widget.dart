import 'package:flutter/material.dart';

class CustomFeedWidgets extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const CustomFeedWidgets(
      {super.key, required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.013,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                ),
              ),
              SizedBox(
                height: size.height * 0.009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      // acction of comment icon button
                    },
                    icon: const Icon(Icons.comment),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  IconButton(
                    onPressed: () {
                      // share of comment icon button
                    },
                    icon: const Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
