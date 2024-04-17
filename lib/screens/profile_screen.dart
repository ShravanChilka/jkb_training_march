import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              const Image(
                width: double.maxFinite,
                height: 400,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 400,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.brown,
                      Colors.transparent,
                      Colors.brown,
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: double.maxFinite,
              //   height: 400,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.center,
              //       end: Alignment.bottomCenter,
              //       colors: [Colors.transparent, Colors.brown],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Amazing\ntaste of\ncoffee',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
                'asjjdkahsl kdhasj ;dajks ;oa hdasodj na;skj dsahjd as;jd aoshh da;jobd asbd ajob asjdba '),
          ),
        ],
      ),
    );
  }
}
