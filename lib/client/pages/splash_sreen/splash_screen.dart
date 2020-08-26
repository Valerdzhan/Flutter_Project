import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 97, 186, 1),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/splash.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

// class _SplashScreenPageState extends State<SplashScreenPage> {
//   bool _isInitLoad;
//   @override
//   void initState() {
//     super.initState();
//     _isInitLoad = widget.isInitLoad;
//   }

//   @override
//   void didUpdateWidget(SplashScreenPage oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     consumeEvents();
//   }

//   void consumeEvents() {
//     if (widget.isInitLoad)
//       setState(() {
//         _isInitLoad = widget.isInitLoad;
//       });
//     if (_isInitLoad) _navigateToHome();
//   }

//   void _navigateToHome() {
//     Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (BuildContext context) => HomeConnector()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(37, 97, 186, 1),
//       body: Container(
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Center(
//                   child: Image.asset(
//                     'assets/images/splash.png',
//                     width: 100.0,
//                     height: 100.0,
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
