import 'package:flutter/material.dart';
class Icones extends StatefulWidget {
  const Icones({ Key? key, required this.icone }) : super(key: key);
 final IconData icone;
  @override
  _IconesState createState() => _IconesState();
}

class _IconesState extends State<Icones> {
  bool selecionar = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {

          selecionar = !selecionar
        })
        },
      child: Container(
        child:
        Icon(
          widget.icone 
        ),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
        color: selecionar? Colors.grey: Colors.yellow, 
        borderRadius: BorderRadius.circular(100)
      ),
      ),
    );
  }
}