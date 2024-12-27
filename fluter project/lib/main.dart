import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        backgroundColor: Colors.blueGrey,
        centerTitle:true,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alina Fatima Pretty',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              Text(
                'I Am Mobile App Developer And Designer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.underline,
                ),
              ),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook, size: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.linked_camera, size: 30),
                  ),
                  
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.telegram, size: 30),
                  ),
              
                ],
              ),
              Container(
  padding: EdgeInsets.all(16),
  child: Image.asset(
    'lib/assets/picture.jpg',
    height: 200,
    width: 200,
    fit: BoxFit.cover,
  ),
),
              Text(
                  'Alina Fatima',
                  style:TextStyle(
                    fontSize:30,
                    fontWeight: FontWeight.bold
                  ),
                ),

              Text(
                'Passionate developer adept at crafting elegant and efficient solutions to complex problems. Dedicated to continuous learning and staying abreast of emerging...',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsPage()),
                  );
                },
                child: Text('Projects and Experience'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkillsPage()),
                  );
                },
                child: Text('Skills'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InterestsPage()),
                  );
                },
                child: Text('Interests'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EducationPage()),
                  );
                },
                child: Text('Education'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects and Experience'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Todo App'),
              subtitle: Text('A simple todo list app built with Flutter and Firebase.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Weather App'),
              subtitle: Text('A weather app built with Flutter that fetches data from a REST API.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Expense Tracker App'),
              subtitle: Text('An app for managing expenses and tracking spending habits.'),
            ),
          ),
        ],
      ),
    );
  }
}
class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSkill('Flutter', 90),
            buildSkill('Dart', 85),
            buildSkill('UI/UX Design', 80),
          ],
        ),
      ),
    );
  }

  Widget buildSkill(String skill, int percent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(skill, style: TextStyle(fontSize: 16)),
            Text('$percent%', style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(height: 5),
        LinearProgressIndicator(
          value: percent / 100,
          minHeight: 8,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}


class InterestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio Interest Section',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  buildInterestTile('Mobile App Development',
                      'Creating innovative and user-friendly mobile applications.'),
                  buildInterestTile('Web Development',
                      'Building responsive and scalable web applications.'),
                  buildInterestTile('Machine Learning',
                      'Exploring algorithms and models to extract insights from data.'),
                  buildInterestTile('UI/UX Design',
                      'Designing intuitive and visually appealing user interfaces.'),
                  buildInterestTile('Cloud Computing',
                      'Leveraging cloud platforms for efficient and scalable solutions.'),
                  buildInterestTile('Open Source Contribution',
                      'Contributing to open source projects and communities.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInterestTile(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}


class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profession, Date of Birth, and Education
              buildRow('Profession', 'Software Developer'),
              buildRow('Date Of Birth', '22-06-2004'),
              buildRow('Education', 'Higher Education'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                    padding: EdgeInsets.all(16.0),
                  ),
                  child: Text(
                    'CHECK RESUME',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              
              Text(
                'Education',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(thickness: 2),
              buildEducationRow(
                'Graduation',
                'The University Of Lahore',
                'Bachelor of Science in Information Engineering Technology, BSIET (Continue).',
              ),
              buildEducationRow(
                'Intermediate',
                'MTB College',
                'Fsc. Pre-engineering. (2019-2021)',
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Divider(thickness: 1, color: Colors.black),
      ],
    );
  }

  Widget buildEducationRow(String level, String institution, String details) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                level,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                institution,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            details,
            style: TextStyle(fontSize: 14),
          ),
          Divider(thickness: 1, color: Colors.black),
        ],
      ),
    );
  }
}