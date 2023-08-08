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
            "Mobile Number*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "+91 XX XX XX XX XX"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                if(value.length!=10){
                  return"Enter valid Mobile Number";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Nationality*".text.make(),
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
            "License Number*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "UP XXXX XXXX XXXXX"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter valid no.";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            
          ],
        
          ),
      )),
      Step(
      state: currentStep>1?StepState.complete:StepState.indexed,
      title: Text("Step 2"),
      isActive: currentStep>=1,
      content: Form(
        key: formkeys[1],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Adhar Card No*".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "XXXX XXXX XXXX"),
              validator:(value) {
                if(value==null||value.isEmpty){
                  return "Enter Customer Name";
                }
                return null;
              },
              
            ),
            SizedBox(height: 10,),
            "Voter ID No.".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "XXXX XXXX XXXX"),
              
              
            ),
            SizedBox(height: 10,),
            "Passport No.".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "XXXX XXXX XXXX"),
              
              
            ),
            SizedBox(height: 10,),
            "Vissa No.".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "XXXX XXXX XXXXX"),
              
              
            ),
            SizedBox(height: 10,),
            "Hotel Name".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "Radisson Hotel"),
             
              
            ),
            SizedBox(height: 10,),
            "Room No.".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "509"),
             
              
            ),
            SizedBox(height: 10,),
            "Bike/Scooty No.".text.make(),
            SizedBox(height: 12,),
            TextFormField(
              decoration: 
              InputDecoration(border: OutlineInputBorder(),
              hintText: "XXXX XXXX XXXXX"),
              
              
            ),
            SizedBox(height: 10,),
            
          ],
        
          ),
      )),
      Step(
            state: currentStep>2? StepState.complete:StepState.indexed,
            isActive: currentStep>=2,
            title: const Text('Step 3'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                "We have sent a verification code to*".text.xl.make(),
                SizedBox(height: 12,),
                Form(
                  key: formkeys[2],
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Enter the verification code";
                      }
                     
                    },
                    
                  ),
                ),
                SizedBox(height: 12,)
              ],
              
            ),
          ),
    
   

  ];
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
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        title: Text("        Make a Booking",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66))),
      ),
      body: Theme(data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: MyTheme.renico_blue)),
       child:
       Column(
        children: [
          complete
            ?Expanded(child: Container(
              child: Column(
                
                children: [
                  SizedBox(height: 200,),
                  Container(child: Image.asset("assets/images/Completed.png")).w(1000).h(100),
                  "Booking Successful".text.xl2.make(),
                  "You have successfully made a ".text.make(),
                   "booking at Rentico".text.make(),
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
              currentStep: currentStep,
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