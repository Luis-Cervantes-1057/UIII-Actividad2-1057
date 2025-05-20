import 'package:flutter/material.dart';

class FitnessDetail {
  String image;
  String emojiImage;
  String name;
  String instructor;
  String description;
  Color color;
  int time;

  FitnessDetail({
    required this.emojiImage,
    required this.description,
    required this.color,
    required this.image,
    required this.name,
    required this.instructor,
    required this.time,
  });
}

List<FitnessDetail> userItems = [
  FitnessDetail(
    emojiImage: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/lata.png",
    description: "Coca-Cola clasica la mejor bebida y mundialmente famosa",
    color: const Color.fromARGB(255, 214, 117, 117),
    image: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/coca.png",
    name: 'Coca-Cola',
    instructor: "Refresco",
    time: 18,
  ),
  FitnessDetail(
    emojiImage: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/agua.png",
    description: "Agua Ciel Purificada el agua mas refrescante y te ayuda a conectar tu mente con tu cuerpo",
    color: const Color(0xFFC7E9FE),
    image: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/cieltomando.png",
    name: 'Agua Ciel',
    instructor: "Agua",
    time: 14,
  ),
  FitnessDetail(
    emojiImage: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/jugo.png",
    description: "Jugos Del Valle, Nectares naturales mas deliciosos de todo Mexico, el numero #1",
    color: const Color.fromARGB(255, 199, 254, 216),
    image: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/vallefondo.png",
    name: 'Del Valle',
    instructor: "Nectares",
    time: 17,
  ),
  FitnessDetail(
    emojiImage: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/lechita.png",
    description: "Leche Santa Clara, la leche mas sabrosa para acompañar tus cenas y noches magicas, con los mejores sabores del Pais",
    color: const Color.fromARGB(255, 200, 199, 254),
    image: "https://raw.githubusercontent.com/Luis-Cervantes-1057/UIII-Act2-Android/refs/heads/main/assets/Images/lechetomando.png",
    name: 'Santa Clara',
    instructor: "Lacteo",
    time: 30,
  ),
];