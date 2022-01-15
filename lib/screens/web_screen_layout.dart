import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/constacs_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Web Profile Bar
                //Web Search Bar
                ContactsList()
              ],
            ),
          ),
        ),
        // Web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover)),
        )
      ],
    ));
  }
}
