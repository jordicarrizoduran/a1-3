import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  double rating = 50;
  double secondRating = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("El meu perfil", style: TextStyle(fontSize: 25, color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,), onPressed: () {
            Navigator.pop(context);
        },
        )
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'avatarTag',  // Utilitza el mateix identificador que a la pantalla anterior
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/44.jpg',
                    ),
                    radius: 120,
                  ),
                ),
                Text("Antònia Font,",
                    style: Theme.of(context).textTheme.headlineMedium),
                const Text("since 20 April 2022"),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.secondary,
                          padding: const EdgeInsets.all(10.0),
                          child: const Column(
                            children: [
                              Icon(Icons.timer),
                              Text("Time"),
                              Text("2h 45'"),
                            ]
                          )
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            color: Theme.of(context).colorScheme.secondary,
                            padding: const EdgeInsets.all(10.0),
                            child: const Column(
                                children: [
                                  Icon(Icons.location_on),
                                  Text("Km"),
                                  Text("212,4"),
                                ]
                            )
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            color: Theme.of(context).colorScheme.secondary,
                            padding: const EdgeInsets.all(10.0),
                            child: const Column(
                                children: [
                                  Icon(Icons.run_circle),
                                  Text("Activities"),
                                  Text("42"),
                                ]
                            )
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Height"),
                    Slider(
                      value: rating,
                      onChanged: (newRating) {
                      setState(() => rating = newRating);
                    },
                    min:0,
                    max: 100,
                    activeColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const Text("150 cm")
                  ]
                ),
                const SizedBox(height: 10),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Weight"),
                      Slider(
                        value: secondRating,
                        onChanged: (newRating) {
                          setState(() => secondRating = newRating);
                        },
                        min:0,
                        max: 100,
                        activeColor: Theme.of(context).colorScheme.secondary,
                      ),
                      const Text("50 kg")
                    ]
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
