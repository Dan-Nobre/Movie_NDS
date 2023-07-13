// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:movie_nds/app/CardMovie.dart';
import 'package:movie_nds/app/CarouselScreen.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffA87FF3),
        automaticallyImplyLeading: false,
        title: Row(children: [
          IconButton(
            onPressed: () {
              // Lógica para abrir o menu
              // Pode ser um método ou uma função callback
              // Exemplo: showMenu(context);
            },
            icon: Image.asset(
              'imagens/MenuIcon.png',
              fit: BoxFit.contain,
              height: 35,
            ),
          ),
          const SizedBox(
            width: 69,
          ),
          const SizedBox(
            child: Text(
              'Movie NDS',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ]),

        // title: Row(
        //   children: [
        //     Image.asset(
        //       'imagens/Group 1.png',
        //       fit: BoxFit.contain,
        //       height: 27,
        //     ),
        //     const SizedBox(width: 15),
        //     const SizedBox(
        //       width: 100,
        //       child: Text(
        //         "MovieDB",
        //         style: TextStyle(
        //           fontFamily: "Poppins",
        //           fontWeight: FontWeight.w700,
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: SizedBox(
        //         height: 35,
        //         width: 150,
        //         child: TextFormField(
        //           focusNode: _searchFocusNode,
        //           controller: _searchController,
        //           decoration: InputDecoration(
        //             contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        //             suffixIcon: const Icon(Icons.search),
        //             hintText: 'Search',
        //             filled: true,
        //             fillColor: Colors.white,
        //             enabledBorder: OutlineInputBorder(
        //               borderSide: BorderSide.none,
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Principais Tendências",
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              const CardMovie(),
              SizedBox(
                height: 203,
                child: CarouselScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
