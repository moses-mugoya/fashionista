import 'package:fashion_gemstore/screens/main_screen.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/child_app_bar.dart';
import 'package:fashion_gemstore/widgets/dress_item.dart';
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
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  childAspectRatio: (141 / 300),
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 4.0,
                  shrinkWrap: true,
                  children: [
                    DressItem(
                      imagePath: 'assets/images/dress1.png',
                      liked: true,
                      name: 'Linen Dress',
                      currentPrice: 52.00,
                      rating: 5,
                      ratingsNumber: 64,
                      initialPrice: 90.00,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress2.png',
                      liked: false,
                      name: 'Filted Waist Dress',
                      currentPrice: 47.99,
                      rating: 5,
                      ratingsNumber: 53,
                      initialPrice: 82.00,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress3.png',
                      liked: false,
                      name: 'Maxi Dress',
                      currentPrice: 68.00,
                      rating: 3,
                      ratingsNumber: 46,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress4.png',
                      liked: true,
                      name: 'Front Tie Mini Dress',
                      currentPrice: 59.00,
                      rating: 4,
                      ratingsNumber: 38,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress5.png',
                      liked: true,
                      name: 'Ohara Dress',
                      currentPrice: 85.00,
                      rating: 4,
                      ratingsNumber: 50,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress6.png',
                      liked: true,
                      name: 'The Black Mini Dress',
                      currentPrice: 67.00,
                      rating: 5,
                      ratingsNumber: 39,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress7.png',
                      liked: false,
                      name: 'Leaves Green Dress',
                      currentPrice: 64.00,
                      rating: 5,
                      ratingsNumber: 83,
                    ),
                    DressItem(
                      imagePath: 'assets/images/dress8.png',
                      liked: false,
                      name: 'Off Shoulder Dress',
                      currentPrice: 78.99,
                      rating: 4,
                      ratingsNumber: 25,
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
