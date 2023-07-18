import 'package:flutter/material.dart';
import 'package:movie_nds/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          decoration: InputDecoration(
        hintText: 'Search...',
        filled: true,
        fillColor: Colors.white,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'imagens/SearchIcon.png',
            fit: BoxFit.contain,
            height: 40,
            width: 40,
          ),
        ),
        suffixIcon: SizedBox(
          width: 48,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultBorderRadius)
                )
              ), 
            ),
            child: Image.asset('imagens/FilterIcon2.png'),
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);
