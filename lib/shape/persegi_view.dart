import 'package:flutter/material.dart';
import 'package:luas/home/home_view.dart';

class PersegiView extends StatefulWidget {
  const PersegiView({super.key});

  @override
  State<PersegiView> createState() => _PersegiViewState();
}

class _PersegiViewState extends State<PersegiView> {
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  double luas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop(
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xff222C87),
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 150.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Color(0xff222C87),
                      ),
                      child: const Text(
                        'Persegi',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Icon(
                  Icons.square,
                  color: Color(0xff222C87),
                  size: 200,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: panjang,
                    decoration: const InputDecoration(
                      label: Text('Panjang'),
                      focusColor: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: lebar,
                    decoration: const InputDecoration(
                      label: Text('Lebar'),
                      focusColor: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      luas =
                          double.parse(panjang.text) * double.parse(lebar.text);
                      panjang.text = 0.toString();
                      lebar.text = 0.toString();
                    });
                  },
                  child: const Text('Hitung Luas'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text('Luas $luas'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
