import 'package:flutter/material.dart';
import 'package:portfolio_app/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHome(),
    },
  ));
}


















































































































// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyPortfolioApp());
// }

// class MyPortfolioApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Portfolio',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: PortfolioScreen(),
//     );
//   }
// }

// class PortfolioScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Portfolio'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage(
//                   'assets/profile.jpg'), // Add your profile image in assets folder
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your Name',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Flutter Developer',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'About Me',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Write a short bio about yourself here. Talk about your skills, experience, and interests.',
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Projects',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: <Widget>[
//                   ProjectCard(
//                     title: 'Project 1',
//                     description: 'Description of project 1.',
//                   ),
//                   ProjectCard(
//                     title: 'Project 2',
//                     description: 'Description of project 2.',
//                   ),
//                   ProjectCard(
//                     title: 'Project 3',
//                     description: 'Description of project 3.',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProjectCard extends StatelessWidget {
//   final String title;
//   final String description;

//   ProjectCard({required this.title, required this.description});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
