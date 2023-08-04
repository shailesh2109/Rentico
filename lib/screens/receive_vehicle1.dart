import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ReceiveVehicle extends StatefulWidget {
  const ReceiveVehicle({super.key});

  @override
  State<ReceiveVehicle> createState() => _ReceiveVehicleState();
}

class _ReceiveVehicleState extends State<ReceiveVehicle> {
  int currentStep=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 1,
          backgroundColor: MyTheme.cream,
         leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
          automaticallyImplyLeading: false,
          title: Text("        Receive a Vehicle",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66))),
      ),
      body: Stepper(
        type: StepperType.horizontal,
      currentStep: currentStep,
      onStepCancel: () {
        if (currentStep > 0) {
          setState(() {
            currentStep -= 1;
          });
        }
      },
      onStepContinue: () {
        if (currentStep <= 0) {
          setState(() {
            currentStep += 1;
          });
        }
      },
      
      controlsBuilder: (context, details) {
        return Container(
          child: ElevatedButton(onPressed: details.onStepContinue, child: "Next".text.make()),

        );
      },
      
      steps: <Step>[
        Step(
          state: currentStep>0? StepState.complete:StepState.indexed,
          isActive: currentStep>=0,
          title: const Text('Step 1'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              "Last four digits of vehicle*".text.xl.make(),
              SizedBox(height: 12,),
              TextField(
                decoration: 
                InputDecoration(border: OutlineInputBorder(),
                hintText: "X X X X")
                
              ),
              SizedBox(height: 12,)
            ],
            
          ),
        ),
         Step(
          isActive: currentStep>=1,
          title: Text('Step 2'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              "Rental Income*".text.xl.make(),
              SizedBox(height: 12,),
              TextField(
                decoration: 
                InputDecoration(border: OutlineInputBorder(),
                hintText: "₹2000")
                
              ),
              SizedBox(height: 12,),

              "Advance Amount*".text.xl.make(),
              SizedBox(height: 12,),
              TextField(
                decoration: 
                InputDecoration(border: OutlineInputBorder(),
                hintText: "₹2000")
                
              ),
              SizedBox(height: 12,)
            ],
            
          ),
        ),
      ],
    ));
  }
}