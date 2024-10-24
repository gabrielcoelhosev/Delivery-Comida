import 'package:delivery_comida/app/data/data.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String? selecionado;
  List<Data> Hamburgueres = [
    Data(
        imagem: 'assets/imgs/hb1.jpg',
        texto: 'Cheddar Classic',
        preco: 25.90),
    Data(
        imagem: 'assets/imgs/hb2.jpg',
        texto: 'Bacon BBQ Delight',
        preco: 29.90),
    Data(
        imagem: 'assets/imgs/hb3.jpg',
        texto: 'Veggie Supreme',
        preco: 23.90),
    Data(
        imagem: 'assets/imgs/hb4.jpg',
        texto: 'Spicy Jalapeño Burger',
        preco: 34.90),
    Data(
        imagem: 'assets/imgs/hb5.jpg',
        texto: 'Mushroom Swiss Melt',
        preco: 39.90),
    Data(
        imagem: 'assets/imgs/hb6.jpg',
        texto: 'Teriyaki Dream Burger',
        preco: 35.90),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/imgs/logo-delivery.png',
              height: 70,
            ),
            Text(
              'Delivery Comida',
              style: TextStyle(
                fontFamily: 'PoppinsR',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0.5),
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: 'PoppinsR'),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: ' O que você  procura hojê?',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imgs/hamburguerchamada.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _tiposProdutos(
                        'Hamburguer', Image.asset('assets/imgs/burguer.jpg')),
                    const SizedBox(
                      width: 15,
                    ),
                    _tiposProdutos(
                        'Pizza', Image.asset('assets/imgs/pizza.jpg')),
                    const SizedBox(
                      width: 15,
                    ),
                    _tiposProdutos(
                        'Fit', Image.asset('assets/imgs/fitcomida.png')),
                    const SizedBox(
                      width: 15,
                    ),
                    _tiposProdutos(
                        'Bebidas', Image.asset('assets/imgs/refri.jpg')),
                    const SizedBox(
                      width: 15,
                    ),
                    _tiposProdutos(
                        'Sushi', Image.asset('assets/imgs/sushi.jpg')),
                    const SizedBox(
                      width: 15,
                    ),
                    _tiposProdutos(
                        'Hamburguer', Image.asset('assets/imgs/burguer.jpg')),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Recomendado para Você',
                    style: TextStyle(
                        fontFamily: 'PoppinsR', fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Veja Mais',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Hamburgueres.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 231, 231),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                width: 140,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(Hamburgueres[index].imagem),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              Hamburgueres[index].texto,
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'PoppinsR'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'R\$ ${Hamburgueres[index].preco.toString()}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.greenAccent,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tiposProdutos(String nome, Image foto) {
    final bool seSelecionado = selecionado == nome;

    return GestureDetector(
      onTap: () {
        setState(() {
          selecionado = nome;
        });
      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(
              width: seSelecionado ? 1 : 0.5,
              color: seSelecionado ? Colors.green : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: foto.image),
              ),
            ),
            Text(
              nome,
              style: TextStyle(
                  fontSize: 12,
                  color: seSelecionado ? Colors.green : Colors.black,
                  fontFamily: 'PoppinsR',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
