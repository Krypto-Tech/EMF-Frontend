import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget{
    final IconData icon;
    final Color color;
    final String title;
    final String description;
    final String time;


    const ActivityItem({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
    required this.time,

    });

    @override
    Widget build(BuildContext context){
        return Row(
            children:[
                CircleAvatar(
                    radius:22,
                    backgroundColor: color.withValues(alpha:0.12),
                    child:Icon(
                        icon,
                        color:color,
                    ),
                ),
                const SizedBox(width:12),
                Expanded(
                    child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                            Text(
                                title,
                                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight:FontWeight.w600,
                                ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                                description,
                                style:Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.blueGrey,
                                ),
                            ),
                        ]
                    ),
                ),

                const SizedBox(width:8),
                Text(
                    time,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color:Colors.blueGrey,

                    )
                )
            ]
        );
    }
}