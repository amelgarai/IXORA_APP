import 'package:flutter/material.dart';
import 'package:ixorapmp_app/components/custom_button.dart';
import 'package:ixorapmp_app/components/custom_password_field.dart';
import 'package:ixorapmp_app/components/custom_scaffold.dart';
import 'package:ixorapmp_app/components/custom_textfield.dart';
import 'package:ixorapmp_app/services/login_service.dart';
import 'package:ixorapmp_app/styles/colors.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
    );
  }


  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 40,right: 40),
      child: Column(
        children: [
          SizedBox(height: 200,),
          _getLogo(),
          _getTitle(),
          SizedBox(height: 100,),
          _getEmail(),
          SizedBox(height: 15,),
          _getPassword(),
          SizedBox(height: 35,),
          _getButton(),
          SizedBox(height: 35,),
           
        ],
      ),
    );
  }

 

  Widget _getLogo() {
    return Container();
  }

  Widget _getTitle() {
    return Container(
      child: Column(
        children: [
          Text("IxoraPMP", style:  
            TextStyle(color:  white, fontSize: 50,fontWeight: FontWeight.w600),
          ),
          Text("LOGIN TO FOLLOW AND MANAGE YOUR TASKS", style: 
            TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 13)
          )
        ],
      )
    );
  }

  Widget _getEmail() {
    return CustomTextfield(
      hintText: "Email",
      iconData: Icons.mail,
      suffixIcon: SizedBox(),
      textEditingController: emailController,
    );
  }

  Widget _getPassword() {
    return CustomPasswordField(
      textEditingController: passwordController,
    );
  }

  Widget _getButton() {
    return CustomButton(
      title: "LOGIN",
      onTap: () {
        print("email: "+emailController.text);
        print("pqssword: "+passwordController.text);
        Network.login(context,
          email: emailController.text,
          password: passwordController.text
        );
      },
    );
  }

  
}