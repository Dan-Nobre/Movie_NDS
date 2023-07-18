// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:movie_nds/constants.dart';
import 'components/list_card_movies.dart';
import 'components/search_form.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'imagens/MenuIcon.png',
            fit: BoxFit.contain,
            height: 35,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: defaultPadding / 2),
            Text(
              'MOVIE NDS',
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('imagens/ToggleOffIcon.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 2)),
              const SearchForm(),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(
                "Principais Tendências",
                style: Theme.of(context).textTheme.displayMedium,
              ),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              ListCardMovies(),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              Text(
                "Animes",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              
              ListCardMovies(),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              Text(
                "Filmes",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              
              ListCardMovies(),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              Text(
                "Séries que você curtiu",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              
              ListCardMovies(),
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
                color: Color(0xffA87FF3),
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


