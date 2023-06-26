import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  // PrincipalScreen({super.key});
  
  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusMode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA87FF3),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'imagens/Group 1.png',
              fit: BoxFit.contain,
              height: 27,
            ),
            SizedBox(width: 15),
            SizedBox(
              width: 100,
              child: Text("MovieDB"),
            ),

            SizedBox(
            height: 35,
            width: 150,
            child: Expanded(
              child: TextFormField(
                focusNode: _searchFocusMode,
                controller: _searchController,
                
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 0 , 0, 0),
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
            ),
            
            ),
            
            // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            // TextField(
            //   focusNode: _searchFocusMode,
            //   controller: _searchController,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.search),
            //     hintText: 'Search',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
              // Expanded(
              //       child: ListView.builder(
              //         itemCount: 20,
              //         itemBuilder: (context, index) {
              //           return ListTile(
              //             title: Text('Item $index'),
              //           );
              //         },
              //       ),
              //     ),
          ],
        ),
      ),
    );
  }
}
