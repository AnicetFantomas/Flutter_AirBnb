import 'package:airbnb_clone/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final TextTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 128,
        flexibleSpace: Container(
          child: Stack(
            children: [
              // Positioned(
              //   top: 0.0,
              //   left: 0.0,
              //   right: 0.0,
              //   bottom: 0.0,
              //   child: PropertyTypeList(),
              // ),

              Positioned(
                left: 16.0,
                right: 72.0,
                top: 64.0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: appGrey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(children: [
                    const Icon(Icons.search),
                   const SizedBox(width: 8.0),
                    Column(
                      children: [
                        Text(
                          'Where to?',
                          style: TextTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text('Anywhere - Any week - Add guests',
                            style: TextTheme.bodyMedium),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
