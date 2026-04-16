import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider()),
            const SizedBox(width: 9,),
            Text(
              'Or continue with',
              style: TextStyle(
                fontSize: 17
              ),
            ),
            const SizedBox(width: 9,),
            Expanded(child: Divider())
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextButton(
                  onPressed: () {}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata, color: Color(0xFF00174A), size: 40,),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF00174A),
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextButton(
                  onPressed: () {}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple, color: Color(0xFF00174A), size: 35,),
                      Text(
                        'Apple',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF00174A),
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}