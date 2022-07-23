import 'package:flutter/material.dart';

class Frete extends StatefulWidget {
  const Frete({ Key? key }) : super(key: key);

  @override
  _FreteState createState() => _FreteState();
}

class _FreteState extends State<Frete> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: const Offset(0, 1.5),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.local_shipping_outlined,
                    color: Color(0xff43b176),
                  ),
                  Text(
                    " Frete Grátis",
                    style: TextStyle(
                      color: Color(0xff43b176),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " em milhões de produtos a partir de RS79",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
    );
  }
}