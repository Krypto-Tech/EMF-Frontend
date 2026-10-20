import 'package:flutter/material.dart';


class OverviewCard extends StatelessWidget{
    final IconData icon;
    final String title;
    final String value;
    final Color color;


    const OverviewCard({
        super.key,
        required this.icon,
        required this.title,
        required this.value,
        required this.color
        });

    @override
    Widget build(BuildContext context){
        return Card(

            elevation:0,
            color:color.withValues(alpha:0.12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),

            ),
        
        child: Padding(
            padding: const EdgeInsets.all(10),
            child:Row(
                children:[
                    CircleAvatar(
                        backgroundColor:color,
                        radius:20,
                        child:Icon(
                            icon,
                            color:Colors.white,
                            size:21,

                        ),
                    ),
                    const SizedBox(width:8),
                    Expanded(
                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize:MainAxisSize.min,
                        children:[
                            Text(
                                value,
                                style:Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    
                                ),

                            ),
                            const SizedBox(height:4),
                                Text(
                                    title,
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.blueGrey.shade700,
                                    fontWeight: FontWeight.w500,
                                    ),
                                ),
                            
                        ],

                    ),
                    ),

                    Icon (
                    Icons.chevron_right,
                    color:color
                    ),


                ],
            )
        )
     );
    }
}