import 'package:flutter/material.dart';
import 'package:localfixers/screens/buyer/buyer_home_screens.dart';
import 'package:localfixers/screens/home_screens.dart';
import 'package:localfixers/services/auth.dart';
import 'package:localfixers/widget/auth_button.dart';
import 'package:localfixers/widget/tab_switcher.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final  _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = Auth();
  bool _isLogin = true;
  bool _ischecked = false;
  bool _isLoading = false;
  bool _obscureText = true;
  int? _selectedIndex;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _changeAuthMode () {
    setState(() {
      _isLogin = !_isLogin;
      _ischecked = !_ischecked;
    });
  }

  Future<void> _onFormSubmit() async {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      if (!_isLogin && _selectedIndex == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select a role')));
      }

      setState(() {
        _isLoading = true;
      });

      try {
        if (_isLogin) {
          final userCredential = await _auth.signIn(email: email, password: password);
          final user = userCredential.user;

          if (user != null) {
            final role = await _auth.getUserRole(user.uid);

            if (mounted) {
              if (role == 'Purchase A Service') {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (_) => BuyerHomeScreens())
                );
              } else if (role == 'Sell a Service') {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (_) => HomeScreens())
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User role not found')));
              }
            }
          }
        } else {
          await _auth.signUP(email: email, fullName: name, password: password, userRole: _selectedIndex == 0 ? 'Purchase A Service' : 'Sell a service');
        
        if (mounted) {
          // if (_isLogin) {
          //   Navigator.pushReplacement(
          //     context, 
          //     MaterialPageRoute(builder: (_) => HomeScreens())
          //   );
          // } else {
            if (_selectedIndex == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => BuyerHomeScreens())
            );
          } else if (_selectedIndex == 1) {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (_) => HomeScreens())
              );
            }
          }
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString().replaceAll('Exception:', ''))));
        }
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Local Fixers'
        ),
        actions: [
          TextButton(
            onPressed: () {}, 
            child: Text(
              _isLogin ? '' : 'Help',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Text(
                        _isLogin ? 'Welcome Back' : 'Create Your Account',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        _isLogin ? 'Please enter your credential to access your horizon' : 'Start your journey with Local Fixers',
                        style: TextStyle(
                          fontSize: 17
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            if (!_isLogin) ...[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(13)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TabSwitcher(
                                      title: 'Purchase A Service', 
                                      index: 0, 
                                      selectedIndex: _selectedIndex ?? -1, 
                                      onTap: (i) {
                                        setState(() {
                                          _selectedIndex = i;
                                        });
                                      }
                                    ),
                                    const SizedBox(width: 10,),
                                    TabSwitcher(
                                      title: 'Sell a service', 
                                      index: 1, 
                                      selectedIndex: _selectedIndex ?? -1, 
                                      onTap: (i) {
                                        setState(() {
                                          _selectedIndex = i;
                                        });
                                      }
                                    )
                                  ],
                                ),
                              ),

                              
                              SizedBox(height: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FULL NAME',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Card(
                                    color: Colors.blueGrey[50],
                                    child: TextFormField(
                                      controller: _nameController,
                                      decoration: InputDecoration(
                                        hintText: 'Alex Morgan',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(15.0)
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                ],
                              )
                            ],
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EMAIL ADDRESS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Card(
                                  color: Colors.blueGrey[50],
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      hintText: _isLogin ? 'name@company.com' : 'alex@fixora.com',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(15.0)
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter your email address';
                                      }
                                      if (!value.contains('@')) {
                                        return 'Enter a valid Email address';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            if (!_isLogin) ...[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PHONE NUMBER',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Card(
                                    color: Colors.blueGrey[50],
                                    child: TextFormField(
                                      controller: _phoneController,
                                      decoration: InputDecoration(
                                        hintText: '+234 000 238 0000',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(15.0)
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter Your Phone Number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PASSWORD',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {}, 
                                      child: Text(
                                        _isLogin ? 'Forgot Password?' : '',
                                        style: TextStyle(
                                          color: Color(0xFF005234)
                                        ),
                                      )
                                    )
                                  ],
                                ),
                                Card(
                                  color: Colors.blueGrey[50],
                                  child: TextFormField(
                                    obscureText: _obscureText,
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      hintText: '********',
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        }, 
                                        icon: Icon(
                                          _obscureText ? Icons.visibility : Icons.visibility_off
                                        )
                                      ),
                                      contentPadding: EdgeInsets.all(15.0)
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter your password';
                                      }
                                      if (value.length <= 7) {
                                        return 'Enter atlease 8 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                if (_isLogin) ...[
                                  CheckboxListTile(
                                    value: _ischecked, 
                                    title: Text(
                                      'Keep me signed in.'
                                    ),
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _ischecked = value ?? false;
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity.leading,
                                  )
                                ]
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF00174A),
                                    Color(0xFF00174A),
                                    Color(0xFF00174A),
                                    Color(0xFF91A9F2)
                                  ]
                                )
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent
                                ),
                                onPressed: _onFormSubmit, 
                                child: _isLoading ? CircularProgressIndicator() : Text(
                                  _isLogin ? 'Sign In' : 'Join The Local Fixers',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                            )
                          ],
                        )
                      ),
                      const SizedBox(height: 30,),
            
                      AuthButton(),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _isLogin ? 'New to Local Fixer?' : 'Already have an account?',
                            style: TextStyle(
                              fontSize: 17
                            )
                          ),
                          TextButton(
                            onPressed: _changeAuthMode, 
                            child: Text(
                              _isLogin ? 'Sign Up' : 'Sign In',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF005234),
                                fontWeight: FontWeight.bold
                              ),
                            )
                          )
                        ],
                      ),
                      Text(
                        _isLogin ? '' : 'BY JOINING YOU AGREE TO OUR TERMS OF SERVICE & PRIVACY POLICY',
                        style: TextStyle(
                          wordSpacing: 3,
                          fontWeight: FontWeight.w300
                        ), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}