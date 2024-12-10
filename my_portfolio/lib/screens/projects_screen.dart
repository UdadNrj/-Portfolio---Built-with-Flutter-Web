import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/header_wifget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'AI Chatbot for Animal Rescue',
        'description':
            'An AI-powered chatbot to assist animal shelters in answering common questions.',
        'imageUrl': 'https://via.placeholder.com/300',
      },
      {
        'title': 'Pet Adoption App',
        'description':
            'A Flutter app to connect adopters with animal shelters.',
        'imageUrl': 'https://via.placeholder.com/300',
      },
    ];

    return Scaffold(
      appBar: HeaderWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return ProjectCard(
              title: project['title']!,
              description: project['description']!,
              imageUrl: project['imageUrl']!,
              onTap: () {
                // Detalle del proyecto
              },
            );
          },
        ),
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}
