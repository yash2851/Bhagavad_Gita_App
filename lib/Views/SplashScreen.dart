import 'package:flutter/material.dart';
import 'HomeScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
        Duration(seconds: 3),
            () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
                (route) => false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                // child: Text(
                //   "कर्मण्येवाधिकारस्तेमाफलेषुकदाचन |\nमाकर्मफलहेतुर्भूर्मातेसङ्गोऽस्त्वकर्मणि ||",
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 25,
                //       color: Colors.white),
                // ),
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/b-logo.jpg'),
                        fit: BoxFit.cover,
                        opacity: 0.8),
                    borderRadius: BorderRadius.circular(200)
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
