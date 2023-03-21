import 'package:arc/main.dart';
import 'package:flutter/material.dart';



class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool? isChecked = false;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  //Background design using stack widget = failed
                  // Expanded(
                  //   child: Stack(
                  //     children:  [
                  //       Positioned(
                  //         top: 60.99,
                  //         left: 28.04,
                  //         child: Container(
                  //           transform: Matrix4.rotationZ(0.07),
                  //           width:  136,
                  //           height:  145,
                  //           decoration:  BoxDecoration (
                  //             border: Border.all(width: 2, color: Colors.yellow,),
                  //             borderRadius:  BorderRadius.circular(14),
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         top: 129.99,
                  //         left: -82.96,
                  //         child: Container(
                  //           transform: Matrix4.rotationZ(0.05),
                  //           width:  136,
                  //           height:  145,
                  //           decoration:  BoxDecoration (
                  //             border: Border.all(width: 2, color: Colors.red,),
                  //             borderRadius:  BorderRadius.circular(14),
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         top: 58.8,
                  //         left: 17.4,
                  //         child: Container(
                  //           transform: Matrix4.rotationZ(2.5),
                  //           width:  92.63,
                  //           height:  99.29,
                  //           decoration:  BoxDecoration (
                  //             border: Border.all(width: 2, color: Colors.blue,),
                  //             borderRadius:  BorderRadius.circular(14),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 100),
                  Center(
                    child: Column(
                      children: [
                        Container (
                          height: 72,
                          width: 72,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage('assets/images/arc_logo.png'),
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 18,),
                  Text(
                      'Welcome back',
                    style: TextStyle(
                      color: AppColor.textColor1,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                      'Enter appropriate data to sign in into your \naccount',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.textColor2,
                    ),
                  ),
                  SizedBox(height: 21,),
                  Form(
                      key:_formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value){
                            if(value == null || value.isEmpty ){
                              return "Enter your email";
                            }else {
                              return null ;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon( Icons.mail_outline_rounded),
                            labelText: "Email Address",
                            // labelStyle: TextStyle(color: Colors.orange ),
                            filled: true,
                            fillColor:  Colors.blueGrey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),

                          ),

                        ),
                        SizedBox(height: 16.6),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value){
                            if(value == null || value.isEmpty ){
                              return "Enter your password";
                            }else {
                              return null ;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon( Icons.lock_outline_rounded),
                            labelText: "Password",
                            // labelStyle: TextStyle(color: Colors.orange ),
                            filled: true,
                            fillColor:  Colors.blueGrey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),

                          ),

                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 38.3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              activeColor: Colors.blue,
                              onChanged: (True) {
                                setState(() {
                                  isChecked = True;
                          });
                          },
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'Show Password',
                            style: TextStyle(
                              color: AppColor.textColor1,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: AppColor.textColor1,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 36,),
                  GestureDetector(
                    onTap: (){
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Placeholder(color: Colors.white, child: Center(
                            child:  CircularProgressIndicator(),
                          ),);
                        }));
                      } else {
                        print('Can\'t Login');
                      }
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff0b0830),fontWeight: FontWeight.w700,fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Text(
                        '- Or Login with -',
                        style: TextStyle(color: AppColor.textColor1,fontWeight: FontWeight.w400,fontSize: 14),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                return const Placeholder(color: Colors.white, child: Center(
                                  child:  CircularProgressIndicator(),
                                ),);
                              }));
                        },
                        child: Container (
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/google_logo.png'),
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return const Placeholder(color: Colors.white, child: Center(
                              child:  CircularProgressIndicator(),
                            ),);
                          }));
                        },
                        child: Container (
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/facebook_logo.png'),
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return const Placeholder(color: Colors.white, child: Center(
                              child:  CircularProgressIndicator(),
                            ),);
                          }));
                        },
                        child: Container (
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                // fit: BoxFit.fill,
                                image: AssetImage('assets/images/twitter_logo.png'),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: AppColor.textColor2,fontWeight: FontWeight.w400,fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Placeholder()));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(color: AppColor.textColor1,fontWeight: FontWeight.w400,fontSize: 14),
                        ),
                      ),
                    ],
                  )
            ],
            ),
        ),
      ),
    );
  }
}
