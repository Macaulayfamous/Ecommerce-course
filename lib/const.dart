import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/views/screens/cart_screen.dart';
import 'package:ecommerce_app/views/screens/feeds_screen.dart';
import 'package:ecommerce_app/views/screens/home_screen.dart';
import 'package:ecommerce_app/views/screens/profile_screen.dart';
import 'package:ecommerce_app/views/screens/search_screen.dart';
import 'package:ecommerce_app/views/screens/upload_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

var backgroundColor = Colors.black;
//Pages

List pages = [
  HomeScreen(),
  FeedsScreen(),
  SearchScreen(),
  CartScreen(),
  UploadScreen(),
  ProfileScreen(),
];

var buttonColor = Colors.black;

var textButtonColor = Colors.white;

//FIREBASE

var firebaseAuth = FirebaseAuth.instance;

var firebaseStore = FirebaseFirestore.instance;

var firebaseStorage = FirebaseStorage.instance;
