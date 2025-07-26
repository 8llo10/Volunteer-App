import 'package:flutter/material.dart';
import 'package:flutter_application_first/pages/login.dart';
import 'package:flutter_application_first/pages/signin.dart';





class FirstPage extends StatelessWidget{
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(elevation: 100
          ,title:Text("FirstPage")
          ,centerTitle:true,
          backgroundColor: Color.fromARGB(66, 223, 28, 93),
          
        ),
        //elevation color appbar


        body: SizedBox(

          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text(
                "Welcome to ",style:TextStyle(
                fontSize: 23,color: const Color.fromARGB(255, 218, 109, 160)
              ),
              ),




              Text(
                " Volunteering platform✨",style:TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 218, 109, 160)
              ),
              ),






              SizedBox(height: 100,),
              


              


              Container( 
                child: 
                ElevatedButton(
                onPressed:(){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
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
              margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            height: 50,
          ),
              

              Container( 
              child:
              ElevatedButton(
                onPressed:(){
                
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Signin()),
  );
                    
                },
                child:Text(
                  "sign up",
                  style: TextStyle(fontSize: 23,color: Colors.white),
                ),
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all( const Color.fromARGB(255, 218, 109, 160)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal:115 ,vertical: 10)),
                  shape:  MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60))),

                ),
              ),
              margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            height: 50,
          ),
             

    






            ],
          ),
        )
    );
  }
}