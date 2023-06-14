// import 'package:dio/dio.dart';
// import 'package:dropdown_search/dropdown_search.dart';
//
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
//
// class MenuHeader extends StatefulWidget {
//   const MenuHeader({Key? key}) : super(key: key);
//
//   @override
//   State<MenuHeader> createState() => _MenuHeaderState();
// }
//
// class _MenuHeaderState extends State<MenuHeader> {
//   String status = "";
//   final Dio client = GetIt.instance.get(instanceName: InjectableNames.finspaceHttpClient);
//   final DioErrorHandler<DefaultApiError> dioErrorHandler = GetIt.instance<DioErrorHandler<DefaultApiError>>();
//   final NotifyErrorSnackbar notifyErrorSnackbar = GetIt.instance<NotifyErrorSnackbar>();
//   final UserRepository userRepository = GetIt.instance<UserRepository>();
//
//   Future<List<Cabinet>> getCabinets(filter) async {
//     List<Cabinet> cabinets = [];
//     final result = await dioErrorHandler.processRequest(() => client.get('/cabinets/'));
//     if (result.isLeft) {
//       notifyErrorSnackbar.notify(result.left, context);
//     } else {
//       for (var el in (result.right.data['results'] as List<dynamic>)) {
//         cabinets.add(Cabinet.fromJson(el));
//       }
//     }
//     return cabinets;
//   }
//
//   void resetBalance() async {
//     final result = await accountHelper.resetBalance();
//     if (result.isLeft) {
//       notifyErrorSnackbar.notify(result.left, context);
//       setState(() {
//         status = "Прозашло ошибка при обновления";
//       });
//     } else {
//       setState(() {
//         status = "Баланс обновлен";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const assetImage = AssetImage("assets/background.png");
//     return DrawerHeader(
//         decoration: const BoxDecoration(image: DecorationImage(image: assetImage, fit: BoxFit.cover)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                     child: DropdownSearch<Cabinet>(
//                   asyncItems: (String? filter) => getCabinets(filter),
//                   selectedItem: userRepository.currentCabinet(),
//                   itemAsString: (Cabinet u) => u.title,
//                   popupProps: const PopupPropsMultiSelection.modalBottomSheet(
//                     showSelectedItems: true,
//                     itemBuilder: cabinetPopupItemBuilder,
//                     showSearchBox: true,
//                   ),
//                   compareFn: (item, sItem) => item.id == sItem.id,
//                   dropdownDecoratorProps: DropDownDecoratorProps(
//                     baseStyle: const TextStyle(color: Colors.white),
//                     dropdownSearchDecoration: InputDecoration(
//                       labelStyle: const TextStyle(color: Colors.white),
//                       labelText: 'Кабинет',
//                       filled: true,
//                       fillColor: Theme.of(context).inputDecorationTheme.fillColor,
//                     ),
//                   ),
//                   onChanged: (cabinet) {
//                     userRepository.setCabinet(cabinet);
//                   },
//                 )),
//
//                 IconButton(
//                     onPressed: () => userRepository.unAuthorize(context),
//                     icon: const Icon(Icons.logout, color: Colors.white)),
//               ],
//             ),
//             Row(
//               children: [
//                 TextButton(
//                   onPressed: () => resetBalance(),
//                   child: const Text("Пересчет баланса", style: TextStyle(color: Colors.white)),
//                 ),
//                 Text(status, style: const TextStyle(color: Colors.white)),
//               ],
//             ),
//           ],
//         ));
//   }
// }
