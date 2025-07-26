// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'Home.dart';



 

class Login extends StatelessWidget{
  const Login({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(elevation: 100
        
          ,title:Text("Log In"),
          backgroundColor: Color.fromARGB(66, 223, 28, 93),
          centerTitle:true,
        ),
        //elevation color appbar


        body: SizedBox(

          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to ",style:TextStyle(
                fontSize: 25,
              ),
              ),




              Text(
                " Volunteering platform",style:TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,
              ),
              ),






              SizedBox(height: 100,),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 1,horizontal: 17),
                  decoration:BoxDecoration(
                      color:const Color.fromARGB(255, 240, 143, 188),
                      borderRadius:BorderRadius.circular(70)),

                  width: 300,
                  child: TextField(
                    decoration:InputDecoration(
                      border:InputBorder.none,
                      hintText: "Enter email",
                      hintStyle:TextStyle(fontSize: 12),
                      prefixIcon: Icon(Icons.person),
                    ),
                  )




              ),


              Container(
                  margin:EdgeInsets.symmetric(vertical: 26),
                  padding: EdgeInsets.symmetric(vertical: 1,horizontal: 17),
                  decoration:BoxDecoration(
                      color:const Color.fromARGB(255, 240, 143, 188),
                      borderRadius:BorderRadius.circular(70)),

                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration:InputDecoration(
                      border:InputBorder.none,
                      hintText: "Enter password",
                      hintStyle:TextStyle(fontSize: 12),
                      prefixIcon: Icon(Icons.lock),

                    ),
                  )




              ),


              ElevatedButton(
                onPressed:(){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
  );
                  
                },
                child:Text(
                  "Log In",
                  style: TextStyle(fontSize: 23,color: Colors.white),
                ),
                style:ButtonStyle(
                  
                  backgroundColor: MaterialStateProperty.all( const Color.fromARGB(255, 218, 109, 160)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal:115 ,vertical: 10)),
                  shape:  MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60))),
                             
                             
                ),
              ),

              SizedBox(
                height: 17,
              ),
              Row(mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("Don't have an accout?"),
                  Text("  Sign Up",style:TextStyle(fontWeight:FontWeight.bold ),),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Row(mainAxisAlignment:MainAxisAlignment.center ,
                children: [

                  Text("Forget Password?",style:TextStyle(fontWeight:FontWeight.bold ,color: const Color.fromARGB(255, 214, 52, 181),),),
                ],
              )







            ],
          ),
        )
    );
  }
}