import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CampoPesquisa extends StatefulWidget {
  const CampoPesquisa({ Key? key }) : super(key: key);

  @override
  _CampoPesquisaState createState() => _CampoPesquisaState();
}

class _CampoPesquisaState extends State<CampoPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Container(
  width: MediaQuery.of(context).size.width - 110,
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              onSubmitted: (test) => {},
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(top: 5),
                filled: true,
                fillColor: Colors.white,
                hintText: "Buscar no Mercado Aberto",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),      
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        elevation: 0,
        backgroundColor: Color(0xffffdb15),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        actions: [
            CampoPesquisa(),
          Padding(padding: EdgeInsets.all(6)),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 32,
            ),
          ),
            
          Padding(padding: EdgeInsets.all(6)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Color(0xffffdb15),
            height: 40.0,
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.all(5)),
                Icon(
                  Icons.pin_drop_outlined,
                  size: 22,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text("Enviar para"),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset(0.5, 0.2),
            colors: [
              Color(0xffffdb15),
              Color(0xfff5f5f5),
            ],
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(3),
              height: 180,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP650326-MLA50239834698_062022-B.jpg',
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffaa0f91), Color(0xff171955)]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: const Offset(0, 1.5),
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Assine o nível 6 por R\$ 9,90/mês!",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Container(
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
            ),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
