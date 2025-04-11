import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/widgets/saved_card.dart';
import 'package:foodfusion/utils/constants/sizes.dart';
class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       centerTitle: true,
       title: Text("Saved recipe",style: TextStyle(fontSize: Sizes.lg,fontWeight: FontWeight.bold),),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           SizedBox(height: 20,),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min'),
           SavedCard(
               image: "assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg",
               title:'Traditional spare ribs baked',
               subtitle: 'By chef faizan ali', time: '20min')
         ],
       ),
     ),
   );
  }
}
