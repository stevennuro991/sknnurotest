import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sknnuro_test/pages/home_model.dart';
import 'package:sknnuro_test/pages/home_page_components.dart';
import 'package:sknnuro_test/utils/asset_paths.dart';
import 'package:sknnuro_test/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGroupPurchaseChecked = false;
  List<ProductData> products = [
    ProductData(isChecked: false, dropdownValue: '1'),
    ProductData(isChecked: false, dropdownValue: '2'),
    ProductData(isChecked: false, dropdownValue: '3'),
  ];

  void _handleGroupPurchaseChanged(bool? value) {
    setState(() {
      isGroupPurchaseChecked = value ?? false;
      for (var product in products) {
        product.isChecked = isGroupPurchaseChecked;
      }
    });
  }

  void _handleCheckboxChanged(bool? value, int index) {
    setState(() {
      products[index].isChecked = value ?? false;
    });
  }

  void _handleDropdownChanged(String? newValue, int index) {
    setState(() {
      products[index].dropdownValue = newValue ?? '1';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const CustomContainerWidget(currency: "OMR", amount: "123"),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onItemSelected: (index) {},
      ),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: kOverlayLight(),
        leadingWidth: double.infinity,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Row(
            children: [
              SvgPicture.asset(AssetPaths.backArrowIcon),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Chart",
                style: GoogleFonts.roboto(
                  color: const Color(0xFF191C1E),
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 1.33,
                  child: Checkbox(
                      activeColor: const Color(0xFFBA1A1A),
                      value: isGroupPurchaseChecked,
                      onChanged: _handleGroupPurchaseChanged),
                ),
                Text(
                  'Group purchase',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductWidget(
                  isChecked: products[index].isChecked,
                  dropdownValue: products[index].dropdownValue,
                  onCheckboxChanged: (value) =>
                      _handleCheckboxChanged(value, index),
                  onDropdownChanged: (newValue) =>
                      _handleDropdownChanged(newValue, index),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 4),
            ),
          ),
          const SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }
}
