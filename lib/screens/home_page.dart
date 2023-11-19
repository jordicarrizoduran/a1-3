import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Columna esquerra
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
            // Columna central
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Fitness Time',
                    style: TextStyle(fontSize: 25, color: Colors.white)),
              ],
            ),
            // Columna dreta
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },

                  child: const Hero(
                    tag: 'avatarTag',
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/women/44.jpg'),
                      radius: 20,
                    ),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hola Diana,",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 20),
              Text("Menja 5 vegades al dia i mantén-te hidratada durant el dia",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
              Text("Mes detalls",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.blue)),
              const SizedBox(height: 40),
              Text("Últimes activitats",
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 20),
              Card(
                  child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Icon(Icons.run_circle_outlined),
                              const SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Running",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge),
                                    const Text("Ahir, 18:20")
                                  ]),
                            ]),
                            Text("7,300 km",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ]))),
              Card(
                  child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Icon(Icons.run_circle_outlined),
                              const SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Running",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge),
                                    const Text("15 Oct 2022, 13:45")
                                  ]),
                            ]),
                            Text("6,550 km",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ]))),
              Card(
                  child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Icon(Icons.run_circle_outlined),
                              const SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Running",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge),
                                    const Text("10 Oct 2022, 19:02")
                                  ]),
                            ]),
                            Text("7,300 km",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ]))),
              const SizedBox(height: 20),
              Center(
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 15.0,
                  percent: 0.7,
                  center: const Text(
                    "70,0%",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: const Text(
                    "Objectiu mensual",
                  ),
                  backgroundColor: Colors.grey,
                  progressColor: const Color(0xFF724CF9),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inici',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cerca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: const Color(0xFFF896D8),
      ),
    );
  }
}
