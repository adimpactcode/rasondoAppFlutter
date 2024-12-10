'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ae155e9c8c8814fa772d84f91f9fa22d",
"assets/AssetManifest.bin.json": "f74a427788720ed2179809beea305dfc",
"assets/AssetManifest.json": "fe0a1b69f77eebe794897cefe01a0faf",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/images/2092.jpg": "d656fd3a37893726d13c3351e482b38a",
"assets/assets/images/adaptive_foreground_icon.png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"assets/assets/images/apple_2504884.svg": "5360bd72d6e3545631ea535b2d536303",
"assets/assets/images/apple_831329.png": "b7f69f9cd02e5d56f5555e41e5c768de",
"assets/assets/images/app_launcher_icon.png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"assets/assets/images/Augenfarbe-Gold.jpg": "35099e9993f77e8857946e37264c44fc",
"assets/assets/images/berschrift.png": "bb98a541284e72a0ba4f6b0fd418656a",
"assets/assets/images/blonde-woman-with-delightfully-large-breast-size-poses-front-camera.jpg": "581ee6e3e975791db7576a7b66154215",
"assets/assets/images/Design_ohne_Titel_(10).png": "0851e609adaf502f58a6139c94c8a09e",
"assets/assets/images/Design_ohne_Titel_(100).png": "294c2200f87028cdc32b02038720ce0c",
"assets/assets/images/Design_ohne_Titel_(11).png": "271cd5f2d2aa8c2689b0f7bbb2e46494",
"assets/assets/images/Design_ohne_Titel_(12).png": "06d972070a2ed3c549fc80c1fc4c0552",
"assets/assets/images/Design_ohne_Titel_(13).png": "6b49d851def05e73b8c9c79af13998a8",
"assets/assets/images/Design_ohne_Titel_(14).png": "5fd55854511cb1b63c2eb21371a09724",
"assets/assets/images/Design_ohne_Titel_(15).png": "36cd3f163bfdee2e36588b38251cd0ab",
"assets/assets/images/Design_ohne_Titel_(16).png": "523db53d9b6978d547e0eaab5d8f7766",
"assets/assets/images/Design_ohne_Titel_(17).png": "66a91cb4172c3c8670c7f152f97d2af0",
"assets/assets/images/Design_ohne_Titel_(2).png": "b72d357671fcdc03d9695bb6655381b9",
"assets/assets/images/Design_ohne_Titel_(20).png": "d6dd39b2bb1ac2deba0caacec9cd6b9a",
"assets/assets/images/Design_ohne_Titel_(21).png": "e60255735ec3856e0f4ede1337b8554f",
"assets/assets/images/Design_ohne_Titel_(22).png": "67fa1f0be65342af5cf3db70fefcbf6a",
"assets/assets/images/Design_ohne_Titel_(23).png": "dc27de155362dd07e110692505779166",
"assets/assets/images/Design_ohne_Titel_(25).png": "b20128a46be52ba52a9a33a5ff901a63",
"assets/assets/images/Design_ohne_Titel_(26).png": "5e5309031799b572c077d34724e64c4e",
"assets/assets/images/Design_ohne_Titel_(27).png": "54d212dfdfe1a4d9ecffeae8a64af94c",
"assets/assets/images/Design_ohne_Titel_(28).png": "45c097ea45a28360665a01fea6d677ec",
"assets/assets/images/Design_ohne_Titel_(29).png": "456b9a564645e117a6d4501b900bd7bd",
"assets/assets/images/Design_ohne_Titel_(30).png": "788dbb32113569227e7862df14aed53e",
"assets/assets/images/Design_ohne_Titel_(31).png": "a685cd26b79214f8559230d09604e3b3",
"assets/assets/images/Design_ohne_Titel_(33).png": "9cdebcab621be791a24dae980ddb0db5",
"assets/assets/images/Design_ohne_Titel_(34).png": "de0bbb2661c19adb0b12a8b9fb4a9b4b",
"assets/assets/images/Design_ohne_Titel_(35).png": "226c5b629e47591fc6a2301705d36cec",
"assets/assets/images/Design_ohne_Titel_(36).png": "74beb32620b16b74df170ec98abe53e2",
"assets/assets/images/Design_ohne_Titel_(37).png": "a6ecf966d4fbbddf12278d4c36509464",
"assets/assets/images/Design_ohne_Titel_(38).png": "907ae93bf2bbb81046ad202a60848906",
"assets/assets/images/Design_ohne_Titel_(39).png": "3c989cad5a88ccfe6a5f68d28fd444eb",
"assets/assets/images/Design_ohne_Titel_(40).png": "707961fd61dbf226a824b3fa7dcf5e79",
"assets/assets/images/Design_ohne_Titel_(41).png": "6105ab38630934409bea793efadd3a6d",
"assets/assets/images/Design_ohne_Titel_(42).png": "bce07582f56fe430331564d1bb73b793",
"assets/assets/images/Design_ohne_Titel_(43).png": "d6c755a7a6fa1efb48f7ddbd2ea4200c",
"assets/assets/images/Design_ohne_Titel_(44).png": "4692510721ee0e00398edef0dd74b588",
"assets/assets/images/Design_ohne_Titel_(45).png": "4120a318679a93e13e6b09f524c90747",
"assets/assets/images/Design_ohne_Titel_(46).png": "fc319b20f5d8814ce2e98f9bbd447c25",
"assets/assets/images/Design_ohne_Titel_(47).png": "07f0daa29a57ad854b6387e0576651da",
"assets/assets/images/Design_ohne_Titel_(49).png": "cf385ab4ed39b25f1dee6efce8b58070",
"assets/assets/images/Design_ohne_Titel_(5).png": "d502ffd2295ace8bb2ea241b010fc3d7",
"assets/assets/images/Design_ohne_Titel_(51).png": "a7288356a40fb7fbf1614366419ca1b7",
"assets/assets/images/Design_ohne_Titel_(56).png": "14891542413807ab04ba1974f094c501",
"assets/assets/images/Design_ohne_Titel_(58).png": "8545d5a0f80ca444a8d3231a1a458b29",
"assets/assets/images/Design_ohne_Titel_(59).png": "bc204faef81c4202fcf5b006ccb956f8",
"assets/assets/images/Design_ohne_Titel_(60).png": "eeb3c820caa90775a9f1d06f39d9cb3f",
"assets/assets/images/Design_ohne_Titel_(61).png": "0828c510cdba8246b395a3781f6488a6",
"assets/assets/images/Design_ohne_Titel_(62).png": "2c92865646c4c60334e46b4d924c5e36",
"assets/assets/images/Design_ohne_Titel_(63).png": "7184458c51c59612f01e05494547733b",
"assets/assets/images/Design_ohne_Titel_(64).png": "30f48b049da4275376e4c5118a5aedd9",
"assets/assets/images/Design_ohne_Titel_(65).png": "9f72d736830ab3e88edec97f00f75cd8",
"assets/assets/images/Design_ohne_Titel_(66).png": "cdd71504820497b83e33d51364c292f6",
"assets/assets/images/Design_ohne_Titel_(67).png": "f9f4b01791a8ca1e04f27dd3184150a0",
"assets/assets/images/Design_ohne_Titel_(68).png": "b4d3168e9ef5052faef2581b0542729f",
"assets/assets/images/Design_ohne_Titel_(69).png": "446cfa2fff04085438ac9e33b1d4d1bd",
"assets/assets/images/Design_ohne_Titel_(70).png": "5563d1f7b64a4ac76a1682f01020d63c",
"assets/assets/images/Design_ohne_Titel_(71).png": "3db6618961f7d7b5bf8a58ecb7749235",
"assets/assets/images/Design_ohne_Titel_(72).png": "e086e7d02e897069906d38812db54fc6",
"assets/assets/images/Design_ohne_Titel_(73).png": "c0813a6cfdd25d3e23689a4b2b618cee",
"assets/assets/images/Design_ohne_Titel_(74).png": "b044c0a2d2ec58871a022cfc97a1c926",
"assets/assets/images/Design_ohne_Titel_(75).png": "b8c4dde60e26ac73a61998525382404a",
"assets/assets/images/Design_ohne_Titel_(76).png": "1940947f0642bfc81948d24300437505",
"assets/assets/images/Design_ohne_Titel_(77).png": "d2721fd1a5ed28ad9fe420d1e1326ef8",
"assets/assets/images/Design_ohne_Titel_(78).png": "ad279aa9ac722f3c6a4b6026be175888",
"assets/assets/images/Design_ohne_Titel_(79).png": "791ae707000e922ac2b8e44d278b9e66",
"assets/assets/images/Design_ohne_Titel_(8).png": "82655d10fa4dba543b6326ca85f657db",
"assets/assets/images/Design_ohne_Titel_(80).png": "06d15ec112e48a6933ce3cd2bfda0f8d",
"assets/assets/images/Design_ohne_Titel_(81).png": "e9b8da5aaf1ee77cad93645a1025a8d8",
"assets/assets/images/Design_ohne_Titel_(83).png": "1fcfb306999b7d44dd82c3c4c7cae010",
"assets/assets/images/Design_ohne_Titel_(89).png": "57777ed2f5752294e722b92a9bc16a23",
"assets/assets/images/Design_ohne_Titel_(9).png": "17bebdd54ff2c8347e7da0b6ec96a839",
"assets/assets/images/Design_ohne_Titel_(90).png": "155760a1db35c63828851ca7c39103ac",
"assets/assets/images/Design_ohne_Titel_(91).png": "5e61757eb98e3bc7957cb6be81b99bd1",
"assets/assets/images/Design_ohne_Titel_(92).png": "97941f5673c1aa2b58d6c768dd807c39",
"assets/assets/images/Design_ohne_Titel_(93).png": "4234c379c9b670d8f3a692bc7d757e8f",
"assets/assets/images/Design_ohne_Titel_(94).png": "8fc5f544cbcd46c3bf72e33cdd1f3d03",
"assets/assets/images/Design_ohne_Titel_(95).png": "6f61020cd1d844d2fe93149c52427918",
"assets/assets/images/Design_ohne_Titel_(96).png": "99b09fefd799980ee68b772b8ed05f28",
"assets/assets/images/Design_ohne_Titel_(97).png": "0ac65fa468cb5ea7e76e7f0d3faa50fd",
"assets/assets/images/Design_ohne_Titel_(98).png": "7540358d9ad618048545cc9194296f04",
"assets/assets/images/Design_ohne_Titel_(99).png": "34ae490ae14d43e8d10b20e7c5c0287b",
"assets/assets/images/Design_ohne_Titel_-_2024-11-15T214123.766.png": "31e1fa95213e755579f060dcc16a6bbc",
"assets/assets/images/Design_ohne_Titel_-_2024-11-15T230911.798.png": "e599a21ba94e38a28913a680a4fa6dba",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083032.678.png": "b172ba74222da1dfebf6fba9294005dd",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083138.170.png": "d594d6e851216ea15d24394f37bf6a90",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083204.314.png": "9048236911f8996acc071be049ee4071",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083240.291.png": "7830bc6bd6da14b1369bb9b90117abb9",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083308.401.png": "3deefdd9fb6bb3a7cdea688da5886ef8",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T083334.245.png": "c1aa3f3baf7d60761a24a2a8b5cd58be",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T090754.412.png": "787cdaeab98707a185f4af78f0e5dd5c",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T090905.263.png": "ff689161821f7e53ac55e5f1c40f04e8",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T091243.708.png": "7fd4fb5f7c47bd87f244b869a77ce57e",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T091330.177.png": "44ddfb1f49fa68ab322d3da8cf697aec",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T095422.793.png": "68d9c17c55ed3f87b9438fcb01c1f7ee",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T164013.773.png": "5a5e27b34a18f8767ef635867e9a666b",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T181553.060.png": "9001a5b61ad2ce01805bc7f400dcca36",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T181711.975.png": "e928723765fe2ce13990dec184a09d25",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T222150.242.png": "352260b9bef35bf2a75cca80dbefc3e7",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T222358.756.png": "26997078ec53565bd6fb65d257a57f0a",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T223114.699.png": "8d64c0597dd42f3e80bbff930ac5bf12",
"assets/assets/images/Design_ohne_Titel_-_2024-11-18T223236.681.png": "bcacfca562952c8b7f12d42910dce2f7",
"assets/assets/images/error_image.png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/freepik__candid-image-photography-natural-textures-highly-r__19929.jpeg": "3f968e31bc13abe05e572c82e624ce23",
"assets/assets/images/google-play_2504916_(1).png": "e7d11bf0f275656ec7ae89ff874be0aa",
"assets/assets/images/Hotest_AI.png": "4ab814a186f24368731910c14a219c02",
"assets/assets/images/Hotest_AI_(1).png": "d33e7a7409d1a9b10dc96317fb59868e",
"assets/assets/images/Hotest_AI_(2).png": "674c6012d5665b3d586661efce7472e0",
"assets/assets/images/HP-4.png": "ebf81fcc0fb7726633b41d76b1c63115",
"assets/assets/images/INTIMITT_NEU_ERLEBEN.png": "54054d3e92d637d5cedbbc07de7a1f48",
"assets/assets/images/Kein_Titel_(200_x_150_px).png": "42265624b0777687df5fbe37eaa9b22e",
"assets/assets/images/left-indent_(1).png": "8b8dea49e304bd7633a95ea110f48156",
"assets/assets/images/list.png": "3a8e2b5f523c3a5b09b09ec148602450",
"assets/assets/images/list_12672221.png": "c175342abe697c94c68e480040274cd2",
"assets/assets/images/Mann--Kaukasisch.jpg": "bd138c92dd3a84b37bd46f387e1f166d",
"assets/assets/images/menu.png": "8c927fd1fdcf0465a44d3572c205f0b0",
"assets/assets/images/menu_(1).png": "a414daceffd5909de15f2f5e815a9781",
"assets/assets/images/mobile.png": "02ca2c2a6a07fabc7d13953e0c68563f",
"assets/assets/images/more.png": "aa92148479334d49125805a6909ddd0f",
"assets/assets/images/pikaso_edit_a-group-of-very-beautiful-Womans-and-Man-standing-.jpeg": "e243f7b043162ef0f7ef21003efc6ea1",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(1).jpeg": "65df35d8560266decd74beaec2a16227",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(12).jpeg": "d18c7122338a4cfcafd378f9db919d63",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(13).jpeg": "86c1fb9d8969f78f7f893c2a66c357fc",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(17).jpeg": "ce154cc729678adc060947ba7da92792",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(19).jpeg": "5df211a7f1f0fdafc1ffc3f04e9f8fc4",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(21).jpeg": "78c345e038a9d3ca99c598b48e7b5e43",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(26).jpeg": "8b3763154f433f354eb95babdc6ec65c",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(27).jpeg": "d060119c6c087d04d9f5a91a1a1b32a1",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(28).jpeg": "4e74c121509c6f9a92c31e94a7a42157",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(29).jpeg": "cfdcd997676a1a59c5367cdffcd2738c",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(3).jpeg": "83647ce7be03535dd260140471f514f7",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(4).jpeg": "5dcc789eaf4f4cdf5e4d2d701522cad8",
"assets/assets/images/pikaso_text-to-image_Candid-image-photography-natural-textures-highly-r_(6).jpeg": "7a37b7c1bc160cdb452bc163f063df5a",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-but-dressed-blonde-woman-in-jean_(1).jpeg": "930fbf8f36412e2dd0da26fc27af216f",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-but-dressed-woman-Her-Body-are-o.jpeg": "70b040c2740e3385518b90ec8b05e5b0",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-but-dressed-woman-Her-Body-are-o_(1).jpeg": "d9e48526d0e626ff90c3c531a5b7c742",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-but-dressed-woman-Her-Body-are-o_(3).jpeg": "e31ae89bbaf8b763738ac0393263d1ee",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-but-dressed-woman-Her-Body-are-o_(4).jpeg": "f818865ff70300fff1073a1239f9713f",
"assets/assets/images/pikaso_texttoimage_a-beauty-and-sexy-woman-Her-Body-are-on-full-displ.jpeg": "6084a7a89f7c4395af1a580df1d0a6e9",
"assets/assets/images/pikaso_texttoimage_sexy-cool-blond-young-woman-.jpeg": "091a6bb98db1d19d6021fc090686ca56",
"assets/assets/images/pikaso_texttoimage_sexy-cool-blond-young-woman-_(2).jpeg": "37c5f6747bf5edd5a4abec1c50618849",
"assets/assets/images/pikaso_texttoimage_sexy-cool-blond-young-woman-_(4).jpeg": "1966d3acc0ecf09e94a3fb2039f03645",
"assets/assets/images/playlist.png": "e39d61fd4475d81643242aa73bcbc6f0",
"assets/assets/images/Rasondo_(18).png": "22ec9ae8852ac3b0e1087d13c5a6f673",
"assets/assets/images/Rasondo_(19).png": "2fcc6252ac3db50407c7e39d155fbc55",
"assets/assets/images/Rasondo_(22).png": "1fce83d625b30492aaac742fab006f71",
"assets/assets/images/Rasondo_(23).png": "5377b90f8d418023790a868f05b4b0a5",
"assets/assets/images/Rasondo_(24).png": "385acfe6bebe2e9e8116bd9363bd6c5f",
"assets/assets/images/Rasondo_(25).png": "66734cf4834780ad96f2ff6ca4a22295",
"assets/assets/images/Rasondo_(28).png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"assets/assets/images/text_(1).png": "a7bb02f1a011ea4afa5f745dac06590c",
"assets/assets/images/The_Right_Model_for_Every_Need.png": "592d85e378ce827e28e07b872c58f487",
"assets/assets/images/thunder.png": "3a97b6d4de3aff53db9a69af35b34915",
"assets/assets/images/thunder_(1).png": "7c1f534aaeac7da41621e2dd50a395ed",
"assets/assets/images/thunder_(2).png": "c36d01d09fccd388cf9d30cec677e91b",
"assets/assets/images/thunder_(3).png": "bb0ebcdfd0792a826ef099589137a4a6",
"assets/assets/jsons/Animation_-_1733099242869.json": "97b494a445cedc8e088b10c68db847e7",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "5822e711dfeab19c540921bfb5b72f0e",
"assets/NOTICES": "114d547969485f2d8e763cad8eabf3ae",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00818dae7ab6cdbf122bc068594a7550",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "65af085b81d8b93e9f9f3f8d671779fa",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "536c11f957f2a443c67365d4bebf99f0",
"icons/app_launcher_icon.png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "f3b501f6805fd504ebaa32a13eb1585c",
"/": "f3b501f6805fd504ebaa32a13eb1585c",
"INTIMITT_NEU_ERLEBEN.png": "54054d3e92d637d5cedbbc07de7a1f48",
"main.dart.js": "72a349c35ff4a1c6bc8c339dfe7fefff",
"manifest.json": "8b24c081e19706c6a8db4b56703cbb78",
"Rasondo_(28).png": "1e0aac9025947ce2fc0ba91f9c2d99c3",
"version.json": "221ec3b606e1a722ac3028244dc74353"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
