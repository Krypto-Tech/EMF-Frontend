import 'package:flutter/material.dart';
import 'package:crud_flutter_todo/views/widgets/ActivityItem.dart';

class RecentActivity extends StatelessWidget{
    const RecentActivity({super.key});

    @override
    Widget build( BuildContext context){
        return Container(
            padding : const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.grey.shade200,
                ),
                boxShadow:[
                    BoxShadow(
                        color:Colors.black.withValues(alpha:0.06),
                        blurRadius:12,
                        offset: const Offset(0,4),
                    ),
                ],
            ),
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children:[
                        Text(
                            'Recent Activity',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,

                            ),
                        ),
                        TextButton(
                            onPressed:(){

                            },
                            child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children:[
                                    Text('View All'),
                                    Icon(Icons.chevron_right),

                                ],
                            ),
                        ),
                    ],
                ),

                const SizedBox(height: 12),
                 ActivityItem(
                    icon: Icons.person_add_alt_1,
                    color: Color(0xFF28C58B),
                    title: 'Dhoni',
                    description: 'Joined the company',
                    time: '2 hours ago',

                ),
                const Divider(height: 24),
                 ActivityItem(
                icon: Icons.event_available,
                color: Color(0xFFFF9B32),
                title: 'Shrudhir',
                description: 'Applied for leave',
                time: '5 hours ago',
            ),
           
          const Divider(height: 24),
           ActivityItem(
            icon: Icons.check_circle,
            color: Color(0xFF168BFA),
            title: 'S Raina',
            description: 'Marked attendance',
            time: '1 day ago',
          ),
          const Divider(height: 24),
           ActivityItem(
            icon: Icons.description,
            color: Color(0xFF8854F6),
            title: 'Tiger Muthuvel Pandian',
            description: 'Submitted a PR',
            time: '1 day ago',
          ),
                ],
            ),
        );
    }
}