import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddEmployeeScreen(),
    );
  }
}

class AddEmployeeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50, // Light purple background
      appBar: AppBar(
        title: Text("Add Employee"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black, // Text color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Age",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Salary",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press logic here
                },
                child: Text("Add Employee"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
