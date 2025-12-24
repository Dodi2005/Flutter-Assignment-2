import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resources/app_textStyles.dart';
import 'package:flutter_application_1/network/dio_config.dart';
import 'package:flutter_application_1/service/auth_service.dart';
class OnboardingItem extends StatefulWidget{const OnboardingItem({super.key});@override State<OnboardingItem> createState() => _OnboardingItemState();}

class _OnboardingItemState extends State<OnboardingItem> 
{
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  int currentPage = 0;
  
  List<Widget> get pages =>
  [
    SafeArea(
      child: Padding
      (
        padding: EdgeInsets.all(0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Padding(padding: EdgeInsets.all(0), 
            child: 
            Image.asset('assets/images/1.png'),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy', style: AppTextstyles.blackBold24),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
          ],
        ),
      ),
    ),
    SafeArea(
      child: Padding
      (
        padding: EdgeInsets.all(0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Padding(padding: EdgeInsets.all(0), 
            child: 
            Image.asset('assets/images/3.png'),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy', style: AppTextstyles.blackBold24),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
          ],
        ),
      ),
    ),
    SafeArea(
      child: Padding
      (
        padding: EdgeInsets.all(0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Padding(padding: EdgeInsets.all(0), 
            child: 
            Image.asset('assets/images/4.png'),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy', style: AppTextstyles.blackBold24),
            ),
            Padding(padding: EdgeInsets.all(10), 
            child: 
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
          ],
        ),
      ),
    ),
    SafeArea
    (
      child: Padding
      (
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Text('Hello', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700)),
            Text('Again!', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.blue)),
            Text("Welcome back, you've been missed", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            SizedBox(height: 30),
            Text('Username*'),
            SizedBox(height: 10),
            Container
            (
              child: TextField
              (
                controller: username,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration
                (
                  border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(6),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10), 
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Password*'),
            Container
            (
              child: TextField
              (
                controller: password,
                obscureText: true,
                decoration: InputDecoration
                (
                  border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(6),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10), 
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox
            (
              width: double.infinity,
              child:
              ElevatedButton
              (
                onPressed: () 
                {
                  AuthService(DioConfig.getDio())
                      .login(username.text, password.text)
                      .then((_) {
                        print("${username.text} is now logged in");
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("${username.text} is now logged in"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      });
                      
                },
            style: ElevatedButton.styleFrom
            (
              side: BorderSide(color: Colors.blue, width: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              padding: EdgeInsets.all(20),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text('Login'),
            ),
            ),
            SizedBox(height: 10,),
            Center
            (
              child: TextButton
              (
                onPressed: () 
                {
                  setState(() 
                  {
                    currentPage = pages.length - 1;
                  });
                },
                child: Text
                (
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.blue),
                ),
              ) ,)
            
          ],
        ),
      ),
    ),
    SafeArea
    (
      child: Padding
      (
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Text('Hello!', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.blue)),
            Text("Signup to get Started", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            Text('Username*'),
            SizedBox(height: 10),
            Container
            (
              child: TextField
              (
                controller: username,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration
                (
                  border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(6),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10), 
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Password*'),
            Container
            (
              child: TextField
              (
                controller: password,
                obscureText: true,
                decoration: InputDecoration
                (
                  border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(6),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10), 
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox
            (
              width: double.infinity,
              child:
              ElevatedButton
              (
              onPressed: () 
              {
                if(password.text != null)
                {
                  showDialog
                  (
                    context: context,
                    builder: (context) 
                    {
                      return AlertDialog
                      (
                        title: Text("You signed up."),
                        actions: 
                        [
                          TextButton
                          (
                            onPressed: () 
                            {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            style: ElevatedButton.styleFrom
            (
              side: BorderSide(color: Colors.blue, width: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              padding: EdgeInsets.all(20),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text('Signup'),
            ),
            ),
            SizedBox(height: 10,),
            Center
            (
              child: TextButton
              (
                onPressed: () 
                {
                  setState(() 
                  {
                    currentPage = pages.length - 2;
                  });
                },
                child: Text
                (
                  "Already have an account? Log in",
                  style: TextStyle(color: Colors.blue),
                ),
              ) ,
            )
          ],
        ),
      ),
    ),
  ];

 @override
Widget build(BuildContext context) 
{
  return Scaffold
  (
    body: pages[currentPage],
    bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(20),
    child: Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: 
      [
        Row
        (
          children: List.generate(pages.length, (index) 
          {
            return Container
            (
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration
              (
                shape: BoxShape.circle,
                color: index == currentPage ? Colors.blue : Colors.grey,
              ),
            );
          }),
        ),

      if (currentPage < pages.length - 2)
        Row
        (
          children: 
          [
            Visibility
            (
              visible: currentPage > 0,
              child: OutlinedButton
              (
                onPressed: currentPage > 0
                    ? () => setState(() => currentPage--)
                    : null,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.grey,
                ),
                child: Text('Back'),
              ),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: currentPage < pages.length - 1
                  ? () => setState(() => currentPage++)
                  : null,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text('Next'),
            ),
          ],
          ),
      ],
      ),
    ),
    );
  }
}