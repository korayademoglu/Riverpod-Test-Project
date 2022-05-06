import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testediyorum/model/sayac_model.dart';
import 'package:testediyorum/sayac_manager.dart';

final titleProvider = Provider<String>((ref)=>'Riverpod Basics');
final title2Provider = Provider<String>((ref)=>'Riverpod StateNotifier Kullanımı');
final textProvider = Provider<String>((ref)=>'Butona basılma sayısı:');

final sayacStateProvider = StateProvider<int>((ref){
  return 0;
});

final sayacNotifierProvider = StateNotifierProvider<SayacManager, SayacModel>((ref)=>SayacManager());

final tekCiftProvider = Provider<bool>((ref) {
  var sayacModel = ref.watch(sayacNotifierProvider);

  // if(sayacModel.sayacDegeri % 2 == 0){
  //   return true;
  // }else{
  //   return false;
  // }
  return sayacModel.sayacDegeri % 2 == 0;
});