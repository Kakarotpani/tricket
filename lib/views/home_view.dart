import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(      
        alignment: AlignmentDirectional.topCenter, 
        children:  [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: const Color.fromARGB(255, 67, 41, 162),
            child: Column(
              children: const [
                SizedBox(height: 64),
                Text("T.", 
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                Text("TRICKET",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenSize.height*0.65,
              width: screenSize.width,
              padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: screenSize.width*3/4,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          ),
                        ),
                        child: SignInButton(
                          Buttons.FacebookNew,    
                          mini: false,                  
                          text: "Continue with Facebook",
                          onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)) 
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: screenSize.width*3/4,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10)
                          ),
                        ),
                        child: SignInButton(                          
                          Buttons.Google,
                          mini: false,
                          padding: const EdgeInsets.only(left: 12),
                          text: "Login with Google",
                          onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)) 
                        ),
                      ),
                    ],
                  ),
                  // Divider
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(color: Colors.black,)
                      ),
                      Text("Or Login with"),        
                      Expanded(
                        child: Divider(color: Colors.black),
                      ),
                    ]
                  ),
                  //form
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter your 10 digit Mobile No.',
                      labelText: 'Mobile Number',
                      labelStyle: const TextStyle(color: Colors.black, fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onChanged: (value) {},
                  ),
                  Column(
                    children: [
                      OutlinedButton(
                        onPressed: (){},
                        child: const Text("Get OTP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(screenSize.width*0.5, 44),
                          backgroundColor:const Color.fromARGB(255, 198, 191, 191),
                          side: const BorderSide(color: Color.fromARGB(255, 198, 191, 191))
                        )
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: (){},
                        child: const Text("Skip For Now",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(screenSize.width*0.5, 44),
                          side: const BorderSide(color: Colors.black),
                          shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}