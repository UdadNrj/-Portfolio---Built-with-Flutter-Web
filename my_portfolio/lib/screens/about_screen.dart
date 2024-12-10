import 'package:flutter/material.dart';
import '../widgets/footer_widget.dart';
import 'package:my_portfolio/widgets/header_wifget.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 20),
              Text(
                'Hi! My name is [Your Name], and I specialize in Flutter development. '
                'My passion lies in using technology to solve real-world problems, '
                'especially those related to animal welfare.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 20),
              Image.asset('assets/images/about_me.jpg'),
              SizedBox(height: 20),
              Text(
                'Skills:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 10),
              Text(
                  '- Flutter & Dart\n- Artificial Intelligence\n- UX/UI Design\n- Pet-friendly apps'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}
