import 'package:myapp/Model/coca_model.dart';
import 'package:myapp/detail_screen.dart';
import 'package:flutter/material.dart';

class FitnessHomePage extends StatelessWidget {
  const FitnessHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 66, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/coca_logo.jpg",
                  height: 50,
                ),
                Image.network(
                  "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/messi.png",
                  height: 90,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              " Select\n Workout",
              style: TextStyle(
                height: 1,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: userItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final fitness = userItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color.fromARGB(11, 0, 0, 0),
                          image: DecorationImage(
                            image: NetworkImage(fitness.emojiImage),
                          ),
                        ),
                        height: 100,
                        width: 95,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: userItems.length,
                itemBuilder: (context, index) {
                  final fitness = userItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: fitness.color,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: fitness.color,
                        ),
                        // Removed fixed width to allow the Row to take available space
                        height: 190,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(fitness: fitness),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded( // Wrapped the Column with Expanded
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fitness.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "with ${fitness.instructor}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Container(
                                      height: 45,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.attach_money),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${fitness.time} mxn",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // For image
                              Padding(
  padding: const EdgeInsets.only(top: 10, left: 8),
  child: SizedBox(
    height: 150,
    width: MediaQuery.of(context).size.width / 2.5,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12), // Ajustá esto como quieras
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(fitness.image),
          ),
        ),
      ),
    ),
  ),
)

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}