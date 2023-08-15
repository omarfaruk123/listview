import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  var MyItems =[
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Omar"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Faruk"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Korim"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Rahim"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Abir"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Hbib"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Bulbul"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Momin"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Jakir"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Akmol"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Nahid"},
    {"img":"https://lh3.googleusercontent.com/ogw/AOLn63ENSOzUS_wv2dPmDIbaJKu98lpBaBlm2DhV27RLFA=s64-c-mo","title":"Amin"}
  ];
  // snack bar method start
  mySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text(message))
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text("hellow world")),
      // for list view
      // body: ListView.builder(
      //   itemCount: MyItems.length,
      //   itemBuilder: (context ,index){
      //     return GestureDetector(
      //       onTap: (){mySnackBar(context, MyItems[index]["title"]);},
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 220,
      //         child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill),
      //       ),
      //     );
      //   },
      // ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1
        ),
        itemCount: MyItems.length,
        itemBuilder: (context ,index){
          return GestureDetector(
            onTap: (){mySnackBar(context, MyItems[index]["title"]);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 220,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill),
            ),
          );
        },
      ),

    );
  }

}

