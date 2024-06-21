import 'package:fizmat_app/screens/home/local_widgets/grid_view.dart';
import 'package:fizmat_app/widgets/fiz_headtext.dart';
import 'package:flutter/material.dart';

class FizHome extends StatelessWidget {
  const FizHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          FizHeadText(
            top: 50,
            text: "Home",
            fontSize: 50,
          ),
          FizHomeGridView(
            containerInfoList: [
              FizHomeContainerInfo(
                pages: Container(color: Colors.red),
                title: 'Book',
                color: Color.fromARGB(255, 64, 85, 225),
              ),
              FizHomeContainerInfo(
                pages: Container(color: Colors.blue),
                title: 'Fomula',
                color: Colors.red,
              ),
              FizHomeContainerInfo(
                pages: Container(color: Color.fromARGB(255, 49, 146, 22)),
                title: 'Kundelik',
                color: Color.fromARGB(255, 1, 205, 79),
              ),
              FizHomeContainerInfo(
                pages: Container(color: Color.fromARGB(255, 199, 184, 18)),
                title: 'Volunteer',
                color: Color.fromARGB(255, 199, 184, 18),
              ),
              FizHomeContainerInfo(
                pages: Container(color: Color.fromARGB(255, 0, 0, 0)),
                title: 'Ranking',
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
