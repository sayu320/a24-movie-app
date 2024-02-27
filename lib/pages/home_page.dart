import 'package:a24_movie_app/data/a24data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset('lib/assets/a24icon.png'),
                    InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'lib/assets/profileicon3.png',
                          width: 40,
                        ))
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'Movies',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text('Shows',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: List.generate(moviesAndShows.length, (index) {
                    return SizedBox(
                      width: screenSize.width / 2 - 16.0,
                      child: Card(
                        child: Image.asset(
                          moviesAndShows[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  })),
            ),
          ))
        ],
      ),
    );
  }
}
