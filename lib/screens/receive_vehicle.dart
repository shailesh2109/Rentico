import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/utils/routes.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ReceiveVehicle extends StatefulWidget {
  const ReceiveVehicle({super.key});

  @override
  State<ReceiveVehicle> createState() => _ReceiveVehicleState();
}

class _ReceiveVehicleState extends State<ReceiveVehicle> {
  List<GlobalKey<FormState>>formkeys=[GlobalKey<FormState>(),GlobalKey<FormState>()];
  List<Step>getSteps(){
  return<Step>[
    Step(
            state: currentStep>0? StepState.complete:StepState.indexed,
            isActive: currentStep>=0,
            title: const Text('Step 1'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                "Last four digits of vehicle*".text.xl.make(),
                SizedBox(height: 12,),
                Form(
                  key: formkeys[0],
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    decoration: 
                    InputDecoration(border: OutlineInputBorder(),
                    hintText: "X X X X"),
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Enter last four digits of vehicle";
                      }
                      if(value.length!=4){
                        return "Enter proper value";
                      }
                      return null;
                    },
                    
                  ),
                ),
                SizedBox(height: 12,)
              ],
              
            ),
          ),
           Step(
            isActive: currentStep>=1,
            title: Text('Step 2'),
            content: Form(
              key: formkeys[1],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  "Rental Income*".text.xl.make(),
                  SizedBox(height: 12,),
                  TextFormField(
                     keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    decoration: 
                    InputDecoration(border: OutlineInputBorder(),
                    hintText: "₹2000"),
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Enter Amount";
                      }
                      return null;
                    },
                    
                  ),
                  SizedBox(height: 12,),
                  
                  "Advance Amount*".text.xl.make(),
                  SizedBox(height: 12,),
                  TextFormField(
                     keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    decoration: 
                    InputDecoration(border: OutlineInputBorder(),
                    hintText: "₹2000"),
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Enter Advance Amount";
                      }
                      return null;
                    },
                    
                  ),
                  SizedBox(height: 12,)
                ],
                
              ),
            ),
          ),
  ];
}
  int currentStep=0;
  bool complete =false;
  next(){
    if( formkeys[currentStep].currentState!.validate()){
    currentStep +1!= getSteps().length
    ? goTo(currentStep+1)
    : setState(() => complete=true);
    }
  }
  
  goTo(int step){
    
    setState(()=>currentStep=step);
    
  }
  

  
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
      body: Theme(
        data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: MyTheme.renico_blue)),
        child: Column(
          children: [
            complete
            ?Expanded(child: Container(
              child: Column(
                
                children: [
                  SizedBox(height: 200,),
                  Container(child: Image.asset("assets/images/Completed.png")).w(1000).h(100),
                  "Received Successful".text.xl2.make(),
                  "You have successfully received a".text.make(),
                   "vehicle at Rentico".text.make(),
                   SizedBox(height: 10,),
                   ElevatedButton( 
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), 
                    child: "Home".text.make())
                ],
              ),
            )):
            Expanded(
              child: Stepper(
                steps: getSteps(),
                type: StepperType.horizontal,
              currentStep: currentStep,
              onStepContinue: next,
            
              controlsBuilder: (context, details) {
                return Container(
                  child: ElevatedButton(onPressed: details.onStepContinue, child: "Next".text.make()),
                  
                );
              },
               ),
            ),
          ],
        ),
        
      ));
  }


}
