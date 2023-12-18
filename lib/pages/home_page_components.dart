import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sknnuro_test/utils/asset_paths.dart';

class CustomPriceCheckoutWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomPriceCheckoutWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 156, top: 16, bottom: 66),
            child: Row(
              children: [
                Text(
                  "OMR",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "123",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "123",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 54),
            child: GestureDetector(
              onTap: onPressed,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text("Checkout"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final bool isChecked;
  final String dropdownValue;
  final Function(bool?) onCheckboxChanged;
  final Function(String?) onDropdownChanged;

  const ProductWidget({
    Key? key,
    required this.isChecked,
    required this.dropdownValue,
    required this.onCheckboxChanged,
    required this.onDropdownChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            decoration: const BoxDecoration(color: Color(0x0C195FA7)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.33,
                      child: Checkbox(
                        activeColor: const Color(0xFFBA1A1A),
                        value: isChecked,
                        onChanged: onCheckboxChanged,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset(
                        AssetPaths.mediaImage,
                        height: 144,
                        width: 144,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 62, left: 34, bottom: 17),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0x1449454F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Row(children: [
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.arrow_drop_down)
                            ]),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Colors.deepPurple),
                            onChanged: onDropdownChanged,
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  'Qty:  $value',
                                  style: GoogleFonts.roboto(
                                    color: const Color(0xFF49454F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, right: 8),
                        child: Text(
                          "Crayola Light Up Tracing Pad - Pink, Drawing Pads for Kids, Kids Toys, Holiday & Birthday Gifts for Girls and Boys, Ages 6+",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 2, bottom: 3, left: 3, right: 13),
                            decoration: const ShapeDecoration(
                              color: Color(0xFF75AEFA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(18)),
                              ),
                            ),
                            child: Text(
                              "#1 Best Seller",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "In Catogery name",
                              style: GoogleFonts.roboto(
                                color: const Color(0xFF6C7C95),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFB3261E),
                            ),
                            padding: const EdgeInsets.only(
                                top: 2, left: 1.7, bottom: 3, right: 7.38),
                            child: const Text("40% off"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Deal",
                            style: GoogleFonts.roboto(
                              color: const Color(0xFFB3261E),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "OMR",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "123",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "123",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("In stock",
                              style: GoogleFonts.roboto(
                                color: const Color(0xFF008100),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          SvgPicture.asset("assets/icons/done.svg")
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Style: ',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                )),
                            TextSpan(
                                text: 'AA%',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Size: ',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                )),
                            TextSpan(
                                text: 'Larg',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/van.svg"),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: ' Free shipping over',
                                      style: GoogleFonts.roboto(
                                        color: const Color(0xFF4297D6),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  TextSpan(
                                      text: ' OMR 23.3',
                                      style: GoogleFonts.roboto(
                                        color: const Color(0xFFDE372F),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "2-day delivery ",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF4297D6),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Free shipping",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF008100),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Business Name",
                              style: GoogleFonts.roboto(
                                color: const Color(0xFF191C1E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFF6C7C95),
                                    size: 24,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/delete.svg",
                                    height: 24,
                                    width: 24,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomContainerWidget extends StatelessWidget {
  final String currency;
  final String amount;

  const CustomContainerWidget({
    Key? key,
    required this.currency,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 156, top: 16, bottom: 66),
            child: Row(
              children: [
                Text(
                  currency,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  amount,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  amount,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 54),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                "Checkout",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFF2F6EB5),
      unselectedItemColor: Colors.black.withOpacity(0.7),
      selectedLabelStyle: GoogleFonts.roboto(
        color: Colors.black.withOpacity(0.699999988079071),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      unselectedLabelStyle: GoogleFonts.roboto(
        color: Colors.black.withOpacity(0.699999988079071),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onItemSelected,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFF2F6EB5).withOpacity(0.3),
            ),
            child: const Icon(Icons.home),
          ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Wishlist',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const Icon(Icons.shopping_cart),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: const Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          label: 'Cart',
        ),
      ],
    );
  }
}
