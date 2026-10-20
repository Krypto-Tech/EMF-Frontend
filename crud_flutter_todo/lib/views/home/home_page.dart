import 'package:crud_flutter_todo/views/login/login.dart';
import 'package:crud_flutter_todo/views/pages/EmployeesPage.dart';
import 'package:crud_flutter_todo/views/pages/AddDelEmployees.dart';
import 'package:crud_flutter_todo/views/pages/AttendancePage.dart';
// import 'package:crud_flutter_todo/services/database_service.dart';
import 'package:crud_flutter_todo/views/widgets/HeatMap.dart';
import 'package:flutter/material.dart';
// import 'package:crud_flutter_todo/views/login/login.dart';
import 'package:crud_flutter_todo/views/widgets/OverviewCard.dart';
import 'package:crud_flutter_todo/views/widgets/OverviewSection.dart';



class Homepage extends StatefulWidget{
  const Homepage({super.key});
@override
State<Homepage> createState()=>_HomePageState();

}





class _HomePageState extends State<Homepage>{
  int pageIndex = 0;
  
  // final List<Widget> pages =[
  //   const AddDelEmployees(),
  //   const AttendancePage(),
  //   const EmployeesPage(),
  // ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FC),
      appBar: AppBar(

        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,  
        
        title: const Text("EMPLOYEE MANAGMENT") , centerTitle: true,

      ),
      body: CustomScrollView(
        slivers: [
            SliverAppBar(
              expandedHeight: 220,
              pinned: true,
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              
              flexibleSpace: const FlexibleSpaceBar(
                background: SafeArea(
                  child: Padding(padding: 
                  EdgeInsets.only(left:20,right:20),
                  child: Align(
                    alignment: Alignment.center,
                    child:Text("Welcome User",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),)
                  ),
                    
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child:  Padding(
        padding: EdgeInsets.all(10.0),
        child:Align(
        alignment: Alignment.topLeft,  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
              Text(
                'DASHBOARD',
                
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),
              ),
              SizedBox(height: 20,),
              //  MyHeatMap(),
              SizedBox(height: 7),
              OverviewSection(),
            

        ]
        ),
        ),
      ),
      )
        ],
      
      ),
      
        // floatingActionButton: FloatingActionButton(onPressed: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
        // },
        
        // child: const Icon(Icons.add)),
        
    );

    
  }
 


  
}