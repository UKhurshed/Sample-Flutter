// // part of '../ui_package.dart';
// import 'package:flutter/material.dart';
// enum UIFlatButtonHeight { high, medium, small }
//
// enum UIFlatButtonIconPosition { left, right }
//
// class UIFlatButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final Color color;
//   final Color disabledColor;
//   final UIFlatButtonHeight height;
//   final Widget child;
//   final double width;
//
//   UIFlatButton(
//       {this.onPressed,
//         this.disabledColor = Colors.grey,
//         this.width,
//         @required this.child,
//         @required this.height,
//         @required this.color})
//       : assert(child != null),
//         assert(height != null),
//         assert(color != null);
//   UIFlatButton.icon(
//       {this.onPressed,
//         this.disabledColor,
//         this.width,
//         double iconPadding = 25,
//         Widget icon,
//         Widget label,
//         UIFlatButtonIconPosition iconPosition = UIFlatButtonIconPosition.left,
//         @required this.height,
//         @required this.color})
//       : assert(height != null),
//         assert(color != null),
//         child = Stack(
//           fit: StackFit.expand,
//           alignment: Alignment.center,
//           children: [
//             Positioned(
//               left: iconPosition == UIFlatButtonIconPosition.left
//                   ? iconPadding
//                   : null,
//               right: iconPosition == UIFlatButtonIconPosition.right
//                   ? iconPadding
//                   : null,
//               child: icon,
//             ),
//             Center(child: label)
//           ],
//         );
//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints.expand(height: buttonHeight, width: width),
//       child: FlatButton(
//         padding: EdgeInsets.zero,
//         disabledColor: disabledColor,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(30))),
//         color: color,
//         onPressed: onPressed,
//         child: child,
//       ),
//     );
//   }
//
//   double get buttonHeight {
//     switch (height) {
//       case UIFlatButtonHeight.high:
//         {
//           return 50;
//         }
//         break;
//
//       case UIFlatButtonHeight.medium:
//         {
//           return 40;
//         }
//         break;
//
//       case UIFlatButtonHeight.small:
//         {
//           return 30;
//         }
//         break;
//       default:
//         return 30;
//         break;
//     }
//   }
// }
