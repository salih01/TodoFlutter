import 'dart:async';
import 'package:flutter/material.dart';


class TodoList  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text("Hazırsan başla !",
                style: TextStyle(color: Color.fromARGB(223, 255, 255, 255),fontSize: 30, fontWeight: FontWeight.bold),
                ),//Burası uygulamanın hazırsan başla yazan yeri 

              Divider(),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,//sarma hareket ettirme ,false yaparsak kaymaz
                itemCount: 5, // kaç tane todo 
                itemBuilder: (context, index){
                
                  return ListTile(
                    onTap: (){},// tıklanıldığında tetiklendiğinde ,dokunma 
                    leading: Container(
                      padding: EdgeInsets.all(0),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        
                        color: Color.fromARGB(223, 255, 225, 0),//yuvarlağın rengi sarı yaptım 
                        shape: BoxShape.circle// yuvarlak bir daire yaptım tik atabilmek için 

                    ),
                    child: Icon(Icons.check,color: Color.fromARGB(223, 0, 0, 0) ,),// check iconu tanımladım
                    ),
                    title: Text(
                      "Firebase bağlandıktan sonra ",
                    style: 
                    TextStyle(color: Color.fromARGB(223, 255, 255, 255),fontWeight: FontWeight.bold),
                   ),// Burası Firebase bağlantısı sağlandıktan sonra aktif olacak 
                 );
               }
             )// içeride 5 eleman var . 5 adet todo listesi 5 adet checkbox
           ],
         ),
        )
      ),


// alt taraftaki ekleme buttonu 

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,// buttonunun hangi konumda olması gerektiğini belirttim 
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Color.fromARGB(223, 251, 234, 0),),
        backgroundColor: Color.fromARGB(223, 102, 0, 255),
        onPressed: (){
          // on pressed gerçekleştiğinde show dialog çalışacak
          showDialog(
            builder: (context) => SimpleDialog(
              contentPadding:new EdgeInsets.fromLTRB(20, 20, 20, 20),
              
              backgroundColor: Color.fromARGB(255, 57, 0, 148),// açıldığında ki sayfanın rengi
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(30)// açılan sayfaya radius verdik
              
              ),
              title: Row(
                children: [
                  Text("EKLE",
                  style: TextStyle(color: Color.fromARGB(223, 255, 255, 255),fontSize: 20),
                  ),
                  Spacer(),
                  IconButton(
                     icon: Icon(
                       Icons.cancel,
                     color: Color.fromARGB(223, 255, 225, 0),
                     size: 30,
                     ),
                     
                  onPressed: () => Navigator.pop(context),// carpı tuşuna basıldığında pop ile kapat 
                  
                  
                  ),
                ]),
                children: [
                  Divider(),
                  TextFormField(
                    cursorColor: Color.fromARGB(223, 0, 0, 0),// tıkladığımda yanıp yanıp sönen siyah çubuk
                         decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Color.fromARGB(53, 0, 0, 0)),
                          hintText: "Ekle bakalım ne yapacaksan",
                          fillColor: Color.fromARGB(255, 255, 225, 0)),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    
                  )//burası açılan pencerenin boyutu
                ],

            ), context: context, 
          );
        },
      ),

    );
  }
}