import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testediyorum/riverpod_basics.dart';
import 'package:testediyorum/state_notifier_kullanimi.dart';

void main() {
  runApp(const ProviderScope(child: StateNotifierKullanimi()));
}
