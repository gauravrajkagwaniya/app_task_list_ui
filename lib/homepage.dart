import 'package:flutter/material.dart';
import './items.dart';

class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Items> itemList =[
    Items("आलू देसी",22 ,1),
    Items("आलू चिप्सोना",35 ,2),
    Items("प्याज लाल",36 ,10),
    Items("प्याज  देसी",65 ,2),
    Items("पालक",23 ,1),
  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text('Grocery list'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
            onPressed:()
            {Navigator.pushNamed(context, '/cart');
            },
              ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (BuildContext context, int index) => itemListCard(context , index)


        ),

        // child: ListView(
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   padding: const EdgeInsets.all(10.0),
        //   children: <Widget>[
        //     const Text('आलू देसी'),
        //     const Text('आलू चिप्सोना'),
        //     const Text('प्याज लाल'),
        //     const Text('प्याज  देसी'),
        //     const Text('पालक'),
        //     const Text('टमाटर'),
        //     const Text('फूलगोभी'),
        //     const Text('पतागोभी'),
        //     const Text('लौकी'),
        //     const Text('धनिया'),
        //     const Text('मिर्ची'),
        //     const Text('नींबू'),
        //     const Text('करेला'),
        //     const Text('शिमला'),
        //     const Text('गाजर'),

        //   ],
        // )

      ),



    );


  }

  Widget itemListCard(BuildContext context, index){
    String dropdownValue= 'Grams';
        return Container(
          child: Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(itemList[index].title,style: TextStyle(fontSize: 25),),
                       Spacer(),
                      Text('rating of product')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("₹ ${itemList[index].cost.toString()}",style:TextStyle(fontSize: 20) ,),
                      Text(' /kg',style:TextStyle(fontSize: 15) ,),
                     
                      //Text(itemList[index].quantity.toString()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                            autofocus: true,

                          ),),

                          Spacer(),
                          DropdownButton<String>(
                         value:  dropdownValue,
                         elevation: 05,
                         underline: Container(
                          height: 2,
                          color: Colors.lightBlue
                        ),

                       items: <String>['Grams', 'Kilograms'].map<DropdownMenuItem<String>>((String values){
                         return DropdownMenuItem<String>(value:values ,child: Text(values),);
                       }).toList(),

                       onChanged: (String newValue) {
                         setState((){
                             dropdownValue= newValue;

                           });
                       },
                        ),
                    ],
                  ),
                  FlatButton(onPressed: (){}, child: Text('ADD'),color: Colors.green,)
                ],
              ),
            ),
          ],
        ),
      ),

    );
    
  }
}
