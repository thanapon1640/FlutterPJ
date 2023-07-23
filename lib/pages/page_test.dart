import 'package:flutter/material.dart';

class PageTest extends StatelessWidget {
  const PageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 38,),
              const Text("MANEE",
                style: TextStyle(
                  
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
                ),
                
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset("assets/img/logosplash.png",scale: 1,)),
                ),
              ),
                const Text("chosse your preference",
                style: TextStyle(
                  color: Colors.grey
                ),),
                const Text("What's your",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),
                const Text("favorite  food?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(bottom:41.0),
                  child: Container(
                    height: 65,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text("Get Started",style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                )
                
        
            ],
            
          ),
        ),
      ),
    );
  }
}