import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/view/widgets/custom_profile_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor:primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'MONZER MAHMOUD',
                        fontSize: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'monzer2022@gmail.com',
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 50,),
              CustomProfileButton(icon: Icons.edit, text: 'Edit Profile', onPressed: (){},),
              SizedBox(height: 10,),
              CustomProfileButton(icon: Icons.location_on, text: 'Shipping Address', onPressed: (){}),
              SizedBox(height: 10,),
              CustomProfileButton(icon: Icons.restore ,text: 'Order History', onPressed: (){}),
              SizedBox(height: 10,),
              CustomProfileButton(icon: Icons.account_balance_wallet, text: 'Cash', onPressed: (){}),
              SizedBox(height: 10,),
              CustomProfileButton(icon: Icons.notifications, text: 'Notifications', onPressed: (){}),
              SizedBox(height: 10,),
              CustomProfileButton(icon: Icons.logout, text: 'Log Out', onPressed: (){}),
              
              
            ],
          ),
        ),
      ),
    ));
  }
}
