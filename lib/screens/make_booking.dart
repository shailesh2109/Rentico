import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class MakeBooking extends StatefulWidget {
  const MakeBooking({super.key});

  @override
  State<MakeBooking> createState() => _MakeBookingState();
}

class _MakeBookingState extends State<MakeBooking> {
  List<GlobalKey<FormState>> formkeys=[GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>()];
  List<Step>getSteps()=>[
    Step(
      state: currentStep>0?StepState.complete:StepState.indexed,
      title: Text("Step 1"),
      isActive: currentStep>=0,
      content: Form(
        key: formkeys[0],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            
          ],
        
          ),
      )),
    Step(
      state: currentStep>0?StepState.complete:StepState.indexed,
      title: Text("Step 2"),
      isActive: currentStep>=1,
      content: Form(
        key: formkeys[0],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Customer Name*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Melon Tusk"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            
          ],
        
          ),
      )),
    Step(title: Text("Step 3"), content: Container()),

  ];
  bool complete =false;
  int currentStep=0;
  next(){
    if(formkeys[currentStep].currentState!.validate()){
      currentStep+1!=getSteps().length
      ?goTo(currentStep+1)
      : setState(() => complete=true,);
    }

  }
  goTo(int step){
    setState(() {
      currentStep=step;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: MyTheme.cream,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        title: Text("        Make a Booking",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66))),
      ),
      body: Theme(data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: MyTheme.renico_blue)),
       child:
       Column(
        children: [
          complete?
          Expanded(child: Container(
              child: Column(
                
                children: [
                  SizedBox(height: 200,),
                  Container(child: Image.asset("assets//images//Completed.png")).w(1000).h(100),
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
            Expanded(child: 
            Stepper(
              steps: getSteps(),
              type: StepperType.horizontal,
              onStepContinue: next,
              controlsBuilder:(context, details) {
                return Container(
                  child: ElevatedButton(onPressed: details.onStepContinue, child: "Next".text.make()),
                );
              },
              ))
        ],
       )
       
        ),
    );
  }
}