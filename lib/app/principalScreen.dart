// ignore_for_file: file_names

import 'package:flutter/material.dart';
// import 'package:movie_nds/app/CardMovie.dart';
import 'package:movie_nds/app/CarouselScreen.dart';
import 'package:movie_nds/constants.dart';

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
      elevation: 0,
      leading: IconButton(
        onPressed: (){},
        icon: Image.asset(
              'imagens/MenuIcon.png',
              fit: BoxFit.contain,
              height: 35,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: defaultPadding / 2),
            Text('MOVIE NDS',
            // style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],


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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Principais Tendências",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              // const Padding(padding: EdgeInsets.only(bottom: 10)),
              SizedBox(
                width: 400,
                height: 183,
                child: ImageCarousel(),
              ),

              const Text(
                "Animes",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
          
              SizedBox(
                width: 400,
                height: 183,
                child: ImageCarousel(),
              ),

              const Text(
                "Filmes",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              
              SizedBox(
                width: 400,
                height: 183,
                child: ImageCarousel(),
              ),

              const Text(
                "Séries que você curtiu",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              
              SizedBox(
                width: 400,
                height: 183,
                child: ImageCarousel(),
              ),


            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffA87FF3
                ),
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
