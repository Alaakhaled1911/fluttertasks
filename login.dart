import 'package:flutter/material.dart';
//import ' package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
class LoginScreen extends StatefulWidget{
@override
_LoginScreenState createState() => _LoginScreenState();

}
Widget buildlogin(){
return Container(
  padding: EdgeInsets.symmetric(vertical: 25),
  width:double.infinity,
  child: ElevatedButton(
style: ElevatedButton.styleFrom(
  padding:EdgeInsets.all(15) ,
 primary:Color.fromARGB(255, 255, 255, 255),
shape: RoundedRectangleBorder(
borderRadius:BorderRadius.circular(15))),
onPressed: () {print ("login");},

child: Text("Login",
 style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,

color: Color(0xff8D7B68 ),
)))
 );
}
Widget buildEmail(){
return Column(
  crossAxisAlignment: CrossAxisAlignment.start ,
  children: <Widget>[
    Text('Email',  style:TextStyle(
            color:Colors.white,
            fontSize:16,
            fontWeight:FontWeight.bold,  
            )
            ),
            SizedBox(height:10 ),
            Container(
              alignment:Alignment.centerLeft ,
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    color:Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2), 
                  )
                ]   
              ) ,
              height:60 ,
              child:TextField(
                keyboardType:TextInputType.emailAddress,
                style:TextStyle(color:Colors.black87,) ,
                decoration:InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top:14 ),
                  prefixIcon:Icon (
                    Icons.email,
                    color:Color(0xff8D7B68)
                  ), 
                  hintText:'Email',
                  hintStyle:TextStyle(
                    color:Colors.black38 
                  ) 

                ) ,
                
              )
            )
  ],
);
}
Widget buildpassword(){
return Column(
  crossAxisAlignment: CrossAxisAlignment.start ,
  children: <Widget>[
    Text('password',  style:TextStyle(
            color:Colors.white,
            fontSize:16,
            fontWeight:FontWeight.bold,  
            )
            ),
            SizedBox(height:10 ),
            Container(
              alignment:Alignment.centerLeft ,
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    color:Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2), 
                  )
                ]   
              ) ,
              height:60 ,
              child:TextField(
              obscureText:true ,
                style:TextStyle(color:Colors.black87,) ,
                decoration:InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top:14 ),
                  prefixIcon:Icon (
                    Icons.lock,
                    color:Color(0xff8D7B68)
                  ), 
                  hintText:'password',
                  hintStyle:TextStyle(
                    color:Colors.black38 
                  ) 

                ) ,
                
              )
            )
  ],
);
}
Widget buildForgotpassBtn ()
{
  return Container(
    
    alignment: Alignment.centerRight,
  
  child:ElevatedButton(
    style: ElevatedButton.styleFrom(
  padding:EdgeInsets.only(right: 0) ,
 primary:Colors.transparent,
 ),
    onPressed: () => print("forgot password"),
      
      child:Text(
'forgotpassword ?',style:TextStyle(
  color:Color.fromARGB(255, 255, 255, 255),
  fontWeight:FontWeight.bold  
) ,
      ),
  )
  );
}
FlatButton({required void Function() onPressed, required EdgeInsets Padding, required Text child}) {
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
body:Stack(
  children: <Widget>[
    Container(
      height: double.infinity,
      width:double.infinity ,
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin: Alignment.topCenter,
end:Alignment.bottomCenter,
colors:[
  Color(0xffC8B6A6),
Color(0xccC8B6A6),
  Color(0x66A4907C),
Color(0x99C8B6A6),
]
          
        ) 
      ),
      child:SingleChildScrollView (
        physics: AlwaysScrollableScrollPhysics(),
     padding:EdgeInsets.symmetric(
      
      horizontal:15,
      vertical:100 , 
     ) , 
     child:Column (
        mainAxisAlignment:MainAxisAlignment.center ,
        children:<Widget> [
          Text('Log in',
          style:TextStyle(
            color:Color.fromARGB(255, 255, 255, 255),
            fontSize:40,
            fontWeight:FontWeight.bold   
          ) ,),
         SizedBox(height: 50),
          buildEmail(),
           SizedBox(height: 20),
          buildpassword(),
          buildForgotpassBtn(),
          buildlogin(),
        ],
      ),
  
      ),
    )
  ],
)





    );
  }
}
