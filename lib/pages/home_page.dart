import 'package:flutter/material.dart';
import '../widgets/custom_feed_widget.dart';
import '../widgets/custom_text_form_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _name;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Home'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            CustomTextFormWidget(
              controllerName: _name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              onIconPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Hello ${_name.text}')));
                }
              },
            ),
            const CustomFeedWidgets(
              title: "Angelonia",
              description:
                  "The bright colors, cascading or upright forms and flowers that bloom non-stop are all reasons to plant this annual in your beds, window boxes, and pots. It's sometimes called summer snapdragon.",
              imageUrl:
                  'https://cdn.pixabay.com/photo/2021/07/15/08/34/angelonia-6467817__340.jpg',
            ),
            const CustomFeedWidgets(
                title: "Balloon Flower",
                description:
                    "This perennial has brilliant blue, purple or pink blooms last for weeks. Plus, the tiny balloon-shaped buds make it even more fun to admire in your garden!",
                imageUrl:
                    'https://cdn.pixabay.com/photo/2019/07/19/09/40/flowered-balloon-flower-4348351__340.jpg'),
          ],
        ),
      ),
    );
  }
}
