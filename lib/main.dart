import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 173, 181),
            bottom: const TabBar(
              unselectedLabelColor: Color.fromARGB(255, 34, 40, 49),
              labelColor: Color.fromARGB(255, 238, 238, 238),
              indicatorColor: Color.fromARGB(255, 238, 238, 238),
              tabs: [
                Tab(icon: Icon(Icons.person_3)),
                Tab(icon: Icon(Icons.school)),
                Tab(icon: Icon(Icons.star)),
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.phone)),
              ],
            ),
            title: const Text('Lab Activity 1',
                style: TextStyle(
                    color: Color.fromARGB(255, 34, 40, 49),
                    fontSize: 30,
                    fontFamily: "Playfair",
                    fontWeight: FontWeight.bold)),
          ),
          body: Container(
            color: const Color.fromARGB(255, 34, 40, 49),
            child: const DefaultTextStyle(
              style: TextStyle(color: Color.fromARGB(255, 238, 238, 238), fontFamily: "Playfair",),
              child: TabBarView(
                children: [
                  PersonalInfoTab(),
                  EducationalBackgroundTab(),
                  SkillsTab(),
                  InterestTab(),
                  ContactTab(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInfoTab extends StatelessWidget {
  const PersonalInfoTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Personal Information",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 238, 238, 238), width: 2),
            ),
            child: Image.asset(
              'assets/images/portrait.png',
              width: 150,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Text(
                "Name:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Achico, John Karlo M.",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Age:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "22",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Gender:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Male",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
           const SizedBox(
                height: 10,
              ),
          const Text(
            "Bio:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "A dedicated IT student with a passion for web development and software development. Eager to contribute to innovative projects and enhance technical skills in these areas.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class EducationalBackgroundTab extends StatelessWidget {
  const EducationalBackgroundTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Educational Background",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Tertiary",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "School: Batangas State University",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Degree: Bachelor of Science in Information Technology",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Year Graduated: 2024 - 2025",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Secondary",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "School: Golden Gate Colleges",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Year Graduated: 2020 - 2021",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10.0),
          Text(
            "School: Libjo National High School",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Year Graduated: 2018 - 2019",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Primary",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "School: San Isidro Elementary School",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Year Graduated: 2014 - 2015",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Technical Skills",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Programming Languages: Python, Java, C++",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Web Development: HTML, CSS, JavaScript, PHP",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Databases: MySQL, PostgreSQL",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Frameworks: Django, React",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
           Text(
            "Tools: Git",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Non-Technical Skills",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Problem-solving",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Adaptability",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Teamwork and Collaboration",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Time management",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class InterestTab extends StatelessWidget {
  const InterestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Interests",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Professional Interest",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Web Development: Frontend and Backend",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Business Analytics",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Database Management and Administration",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Specializations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Power BI and Data Visualization",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Django Development",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "PHP Development",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Research Areas",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Web Development Trends: Investigating current technologies and best practices in frontend and backend web development.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Decision Making in Business Analytics: Exploring predictive modeling techniques to optimize business operations and improve decision-making processes.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20.0, 
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "Email:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "johnkarloachico@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Github:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "github.com/jkarlo-07",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Phone Number:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "09294439475",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Facebook:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "facebook.com/jkarlo.021",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Instagram:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "instagram.com/johnkarlo.021",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
