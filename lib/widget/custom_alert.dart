import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
      ),
      child: AlertDialog(
        backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(   
            width: 32,
            height: 32,
            decoration: BoxDecoration(
               image:  DecorationImage(
                  image:  AssetImage("assets/Image.png"),
                  fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                 "Saber Ali",
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.w700,
                   color: Color(0xff172B4D)
                 ),
                ),
                Text(
                 "Dhaka, Bangladesh",
                 style: TextStyle(
                   fontSize: 10,
                   fontWeight: FontWeight.w400,
                   color: Color(0xff040415)
                 ),
                )
              ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 13),
             child: Row(
               children: [
                 Icon(Icons.person_add_alt,color: Color(0xffF15223)),
                 TextButton(
                   onPressed: (){}, 
                   child:  Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF15223)
                    ),
                    ),
                  )
               ],
             ),
           )
          ],
        ),
      ),
      content: Column(
        children: [
          Container(   
          width: 234,
          height: 234,
          decoration: BoxDecoration(
              image:  DecorationImage(
              image:  AssetImage("assets/profile.png"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          ),
          TextButton(
          onPressed: (){
           
          }, 
          child: Text(
            "View Post",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff040415)
            ),
          )
          ),
        ],
      ),
     
      ),
    );
  }
}