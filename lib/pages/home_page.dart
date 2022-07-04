import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 65,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Text(
                                'Dist. ID: ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.purple),
                              ),
                              Text(
                                'SISTO1|Siraj Store',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Icon(Icons.manage_accounts),
                                  SizedBox(
                                    height: 30,
                                    width: 5,
                                  ),
                                  Text('it03|IT03'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('IN'),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(50),
                                              bottomLeft: Radius.circular(50)),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('OUT'),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            child: Text(
                              'Calls Statistics',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '67',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blueAccent),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Scheduled Call'),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 40),
                                  height: 70,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.green),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Total Visiting')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 40),
                                  height: 70,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        '67',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.orange),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Remaining')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    'assets/order.jpeg',
                                  ),
                                ),
                              ),
                              Text(
                                'Order',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    'assets/saved_order.jpeg',
                                  ),
                                ),
                              ),
                              Text('Saved Order'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    'assets/delivery.jpeg',
                                  ),
                                ),
                              ),
                              Text('Delivery'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Todays Business',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent),
                                      ),
                                      Text('৳'),
                                      Text('Asking'),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  height: 80,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.green),
                                      ),
                                      Text('৳'),
                                      Text('Secondery')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  height: 80,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.orange),
                                      ),
                                      Text('৳'),
                                      Text('Remaining')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Business',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('0 ৳'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Asking'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('0 ৳'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Secondery')
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('0 ৳'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Remaining')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.home),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Text('Add Outlet')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height - 85,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Color(0xFFB5C8C3),
                        child: Center(
                          child: Icon(Icons.key),
                        ),
                      )),
                      Expanded(
                        child: Container(
                          color: Color(0xffE2E6E5),
                          child: Center(
                            child: Text('menu'),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
