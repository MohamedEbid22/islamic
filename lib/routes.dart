import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:islamic/permission_page.dart';
import 'package:islamic/view/screen/Home/ELazker/azenzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/estykazezekr.dart';
import 'package:islamic/view/screen/Home/ELazker/khalazekr.dart';
import 'package:islamic/view/screen/Home/ELazker/manzelzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/masgedzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/morning.dart';
import 'package:islamic/view/screen/Home/ELazker/motafarekzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/nightzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/noomzekr.dart';
import 'package:islamic/view/screen/Home/ELazker/salaazekr.dart';
import 'package:islamic/view/screen/Home/ELazker/taamezekr.dart';
import 'package:islamic/view/screen/Home/ELazker/wdoazekr.dart';
import 'package:islamic/view/screen/Home/Elduea/dueamozacra.dart';
import 'package:islamic/view/screen/Home/Elduea/dueaquran.dart';
import 'package:islamic/view/screen/Home/Elduea/dueathona.dart';
import 'package:islamic/view/screen/Home/Elduea/dueatomayet.dart';
import 'package:islamic/view/screen/Home/Permission.dart';
import 'package:islamic/view/screen/Home/duea.dart';
import 'package:islamic/view/screen/Home/elazker.dart';
import 'package:islamic/view/screen/Home/elhdes.dart';
import 'package:islamic/view/screen/Home/home.dart';
import 'package:islamic/view/screen/Home/homescreen.dart';
import 'package:islamic/view/screen/Home/qiblah.dart';
import 'package:islamic/view/screen/Home/qruanpagr.dart';
import 'package:islamic/view/screen/Home/quransettings.dart';
import 'package:islamic/view/screen/Home/radiofm.dart';
import 'package:islamic/view/screen/Home/raedaudiohdes.dart';
import 'package:islamic/view/screen/Home/readaudioquran.dart';
import 'package:islamic/view/screen/Home/readhedse.dart';
import 'package:islamic/view/screen/Home/readqruan.dart';
import 'package:islamic/view/screen/Home/sabha.dart';
import 'package:islamic/view/screen/intro.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => IntroPage()),
  GetPage(name: "/IntroPage", page: () => IntroPage()),
  GetPage(name: "/Homepage", page: () => Homepage()),
  GetPage(name: "/ElhdesPage", page: () => ElhdesPage()),
  GetPage(name: "/ReadHedse", page: () => ReadHedse()),
  GetPage(name: "/HomeScreen", page: () => HomeScreen()),
  GetPage(name: "/ElAzker", page: () => ElAzker()),
  GetPage(name: "/MorningZker", page: () => MorningZker()),
  GetPage(name: "/EveningAzkar", page: () => EveningAzkar()),
  GetPage(name: "/WedoaaZekr", page: () => WedoaaZekr()),
  GetPage(name: "/TaameZekr", page: () => TaameZekr()),
  GetPage(name: "/SalaaZekr", page: () => SalaaZekr()),
  GetPage(name: "/NoomZekr", page: () => NoomZekr()),
  GetPage(name: "/MotafarekZekr", page: () => MotafarekZekr()),
  GetPage(name: "/Masgedzekr", page: () => Masgedzekr()),
  GetPage(name: "/ManzeleZekr", page: () => ManzeleZekr()),
  GetPage(name: "/KalaaZekr", page: () => KalaaZekr()),
  GetPage(name: "/EstykazeZekr", page: () => EstykazeZekr()),
  GetPage(name: "/AzenZekr", page: () => AzenZekr()),
  GetPage(name: "/QiblahScreen", page: () => QiblahScreen()),
  GetPage(name: "/QruanPage", page: () => QruanPage()),
  GetPage(name: "/ReadQruan", page: () => ReadQruan()),
  GetPage(name: "/Settings", page: () => Settings()),
  GetPage(name: "/Doaa", page: () => Doaa()),
  GetPage(name: "/DueaQuran", page: () => DueaQuran()),
  GetPage(name: "/DueaThonea", page: () => DueaThonea()),
  GetPage(name: "/DueaToMayet", page: () => DueaToMayet()),
  GetPage(name: "/ReadQuranAudio", page: () => ReadQuranAudio()),
  GetPage(name: "/ReadHdethAudio", page: () => ReadHdethAudio()),
  GetPage(name: "/PermissionPage", page: () => PermissionPage()),
  GetPage(name: "/DueaMozacra", page: () => DueaMozacra()),
  GetPage(name: "/Sabha", page: () => Sabha()),
  GetPage(name: "/RadioFM", page: () => RadioFM()),
  GetPage(name: "/PermissionPagee", page: () => PermissionPagee()),
];
