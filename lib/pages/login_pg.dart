import 'package:e_commerce/pages/home_pg.dart';
import 'package:e_commerce/pages/signup_pg.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color.fromARGB(255, 143, 255, 52),
              Color.fromARGB(255, 86, 242, 94),
              ] 
            ),
          ),
        
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Text('Hello\nLog in!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          ),
        
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          // ignore: sized_box_for_whitespace
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              )
            ),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 
                 SizedBox(height: 20,),
                   // Textfield for email
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                           border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                        ),
                
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                        ),
                
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                        
                        ),
                        suffixIcon: Icon(Icons.check,
                        color: Color.fromARGB(255, 6, 124, 12),),
                        // labelText: 'Enter Your Email',
                        hintText: 'Enter your Email',
                        label: Text('Email', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 124, 12),
                        ),)
                      ),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    } else if (!value.contains('@')) {
                      return 'Invalid email';
                     }
                        return null;
                    },

                    ),
                
                    SizedBox(height: 45,),
                
                    // Textfield for password
                      
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                      hintText: 'Enter your Password',
                        label: Text('Password', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 124, 12),
                        ),),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                        ),
                
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                        ),
                
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(width: 1)
                       ),
                        
                        suffixIcon: IconButton(
                         icon: Icon(
                        _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                          color:  Color.fromARGB(255, 6, 124, 12),
                       ),
                       onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                       ),

                      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 8) {
                    return 'Password should be at least 8 characters';
                  }
                  return null;
                 },
                 ),
    
                    SizedBox(height: 35,),
                
                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password ?',  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 124, 12),
                        ),),
                    ),
                
                    SizedBox(height: 50,),
                
                    // container for Login button
                    // ignore: sized_box_for_whitespace
                    GestureDetector(
                      onTap: () {
                      if (_formKey.currentState!.validate()) {
                    // Login logic here
                   Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const HomePage()),
                   );
                   } else {
                 ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please fill in all fields correctly')),
                 );
                 }
      
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //    return  HomePage();
                    //   }));
                      },
                      child: Container(
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [ 
                           Color.fromARGB(255, 143, 255, 52),
                           Color.fromARGB(255, 86, 242, 94),
                        
                            ]
                          ),
                        ),
                      
                        child: Center(
                        child: Text('LOGIN!',   style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                        )),
                      ),
                      
                      // 
                      
                      
                      ),
                    ),
                
                    SizedBox(height: 80,),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          Text('Dont have an account?',  style: TextStyle(
                          fontSize: 18,
                          color:  Color.fromARGB(255, 6, 124, 12),
                          fontWeight: FontWeight.bold,)),
                
                          
                          GestureDetector(
                            onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SignUpPage();
                      }));
                              
                            },
                            child: Text('Sign Up?',  style: TextStyle(
                            fontSize: 18,
                            color:  Color.fromARGB(255, 6, 124, 12),
                            fontWeight: FontWeight.bold,)),
                          ),
                        ],
                      ),
                    ),
    
                        
                  ], ),
                      ),),
                 )),]
                 ),
                
                    // SizedBox(height: 35,),
                
                    // // Forgot Password
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Text('Forgot Password ?',  style: TextStyle(
                    //   fontSize: 18,
                    //   fontWeight: FontWeight.bold,
                    //   color: Color.fromARGB(255, 6, 124, 12),
                    //     ),),
                    // ),
                
                    // SizedBox(height: 50,),
                
                    // // container for Login button
                    // // ignore: sized_box_for_whitespace
                    // GestureDetector(
                    //   onTap: () {
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //    return  HomePage();
                    //   }));
                    //   },
                    //   child: Container(
                    //     height: 60,
                    //     width: 400,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       gradient: LinearGradient(
                    //         colors: [ 
                    //        Color.fromARGB(255, 143, 255, 52),
                    //        Color.fromARGB(255, 86, 242, 94),
                        
                    //         ]
                    //       ),
                    //     ),
                      
                    //     child: Center(
                    //     child: Text('LOGIN!',   style: TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white
                    //     )),
                    //   ),
                      
                    //   // 
                      
                      
                    //   ),
                    // ),
                
                    // SizedBox(height: 150,),
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Column(
                    //     children: [
                    //       Text('Dont have an account?',  style: TextStyle(
                    //       fontSize: 18,
                    //       color:  Color.fromARGB(255, 6, 124, 12),
                    //       fontWeight: FontWeight.bold,)),
                
                          
                    //       GestureDetector(
                    //         onTap: () {
                    //        Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //         return SignUpPage();
                    //   }));
                              
                    //         },
                    //         child: Text('Sign Up?',  style: TextStyle(
                    //         fontSize: 18,
                    //         color:  Color.fromARGB(255, 6, 124, 12),
                    //         fontWeight: FontWeight.bold,)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
    
                  
                );
    
  }
}