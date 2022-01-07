import 'package:flutter/material.dart';
import 'package:portfolio/Model/App.dart';

const primaryColor = Color(0xffc64025);

const clearBack = Color(0xffb48e95);
// const primaryColor = Color(0xffeb0f1e);

Map<String, App> workList = {
  'Wasfaty': new App(
      features:
          ' - FirebaseAuth \n - Cloud Firestore \n - Firebase storage \n - Cloud functions \n - Google maps \n - Multilanguage \n - In app rating \n - Local notification \n - Push notification \n - Image picker \n - Alarm \n - Detection of application status ',
      technical:
          'Wasfaty est un projet composé de 4 application mobile disponible sur les plateformes ios et android : \n - Une application pour les Utilisateurs. \n - Une application pour les Pharmaciens. \n - Une application pour les Livreurs. \n - Une application pour les coordinateurs. \n',
      about:
          "Nous vous présentons l’innovation «WASFATY» au service de la santé des citoyens algériens, qui représente une application mobile la première en Algérie, une plateforme de communication entre citoyens et médecins, pharmacies, laboratoires et fournisseurs en envoyant des ordonnances écrites ou une photo d'un médicament ou une ordonnance électronique et permettant au patient de rechercher des médicaments ou des analyses dans un temps plus rapide et plus efficace.",
      color: Color(0xff218171),
      title: 'Wasfaty',
      logo: 'assets/wasfaty/logo.png',
      description: 'Livrer vous vos Medicament !',
      image1: 'assets/wasfaty/image1.jpeg',
      image2: 'assets/wasfaty/image2.jpeg',
      image3: 'assets/wasfaty/image3.jpeg',
      image4: 'assets/wasfaty/image5.jpeg',
      playstoreLink:
          'https://play.google.com/store/apps/details?id=rev.wasfaty.patient')
};
