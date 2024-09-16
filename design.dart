import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
// import 'package:helloworld/registration.dart';

class Design extends StatelessWidget {
  Design({super.key});

  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body: Container(
  decoration: BoxDecoration(color:Colors.white,),
  child:SingleChildScrollView(
 child:Column(mainAxisAlignment:MainAxisAlignment.start,
 crossAxisAlignment: CrossAxisAlignment.start,
 children:[
                         Stack(
                    children: [
                  Opacity(opacity: 0.6,
                  child:Container(width:100,
                  height:100,
                  decoration:BoxDecoration(
                    color:Colors.purple,
                    borderRadius: BorderRadius.only(
                      bottomRight:Radius.circular(400),
                    )
                  )),),
                    Opacity(opacity: 0.6,
                    child:Positioned(
                      left:80,
                  child:Container(width:150,
                  height:70,
                  decoration:BoxDecoration(
                    color:Colors.purple,
                    borderRadius: BorderRadius.only(
                      bottomRight:Radius.circular(500),
                      bottomLeft: Radius.circular(500),
                    )
                  )),),),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Image(image: NetworkImage('https://media.istockphoto.com/id/1164538944/vector/woman-with-laptop-studying-or-working-concept-table-with-books-lamp-coffee-cup-vector.jpg?s=612x612&w=0&k=20&c=VhUj_AZoUnilUKdRessjsK6JQUjXCfum7RQyuzOr6_0='),width: 400,height:300,fit: BoxFit.fill,),
            SizedBox(
              height: 10,
            ),
            FunTextField(
              controller: nameController,
              lable: 'name',
              hint: 'name',
              width: 280,
            ),
            // TextField(
            //     controller: nameController,
            //     decoration: InputDecoration(hintText: "name")),
            FunTextField(
              controller: passwordController,
              lable: 'pass',
              hint: 'pass',
              width: 280,
            ),
            // TextField(
            //     controller: passwordController,
            //     decoration: InputDecoration(hintText: "pass")),
            Text('Forgot Password'),
            ElevatedButton(
                onPressed: () {
                  Map<String, String> data = {
                    "name": nameController.text.toString(),
                    "pass": passwordController.text.toString()
                  };
                  print(data);
                  print(nameController.text);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Registration()));
                  // Navigator.pushNamed(
                  //     context, "GameUI"); // Navigator.pop(context);
                },
                child: const Text("Login")),
            Text("Dont't have an account?"),
            Text('sign up',
                style: TextStyle(
                  color: Colors.blue,
                )),
          ])
        ],
      ),
    )
    )
    );
    }
}