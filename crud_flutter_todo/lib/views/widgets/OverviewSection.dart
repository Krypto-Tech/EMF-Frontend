import 'package:flutter/material.dart';
import 'package:crud_flutter_todo/views/widgets/OverviewCard.dart';

class OverviewSection extends StatelessWidget{
    const OverviewSection ({super.key});
        @override 
        Widget build(BuildContext context){
            return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        color:Colors.grey.shade200,
                        width:1,
                    ),
                    boxShadow:[
                        BoxShadow(
                            color:Colors.black.withValues(alpha:0.06),
                            blurRadius:12,
                            offset: const Offset(0,4),
                        ),
                    ],
                ),
 
        child:Column(
                crossAxisAlignment: CrossAxisAlignment.center ,
                children:[
                    Text(
                        'OVERVIEW',
                        style:Theme.of(context).textTheme.titleLarge?.copyWith(
                             fontWeight: FontWeight.w700,
                                letterSpacing: -0.5,
                        ),
                    ),
                    const SizedBox(height: 16),
            GridView.count(
                 crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                 childAspectRatio: 2,
                 children:const [
                
              
               OverviewCard(
                icon: Icons.groups_rounded,
                title: 'Total employees',
                value: '48',
                color: Color(0xFF168BFA),
              ),

               OverviewCard(
                icon: Icons.person_rounded,
                title: 'Present today',
                value: '42',
                color: Color(0xFF28C58B),
              ),

               OverviewCard(
                icon: Icons.event_busy_rounded,
                title: 'On leave',
                value: '4',
                color: Color(0xFFFF9B32),
              ),

               OverviewCard(
                icon: Icons.assignment_rounded,
                title: 'Pending requests',
                value: '2',
                color: Color(0xFF8854F6),
              ),
              ],
              )
                ]
        
            )
            
        );
        }
    
}