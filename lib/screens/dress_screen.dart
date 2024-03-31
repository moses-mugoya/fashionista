import 'package:fashion_gemstore/screens/main_screen.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/child_app_bar.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class DressScreen extends StatefulWidget {
  const DressScreen({super.key});

  @override
  State<DressScreen> createState() => _DressScreenState();
}

class _DressScreenState extends State<DressScreen> {
  String _selectedItem = 'Filter';

  void onBackTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                ChildAppBar(
                  onTapped: onBackTap,
                  title: 'Dresses',
                  centerTitle: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderText(
                          text: 'Found',
                          textColor: AppConstants.dressTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        HeaderText(
                          text: '152 Results',
                          textColor: AppConstants.dressTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedItem,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedItem = newValue!;
                              });
                            },
                            items: <String>[
                              'Filter',
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
