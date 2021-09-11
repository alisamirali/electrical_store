import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/details/product_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
          decoration: const BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: textLightColor,
                      isSelect: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelect: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelect: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${product.price}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: defaultPadding / 5),
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 1.5,
            vertical: defaultPadding / 5,
          ),
          child: Text(
            product.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              height: 1.2,
            ),
          ),
        ),
        Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 3),
            height: 40.0,
            child: TextButton(
              child: const Text(
                'أضف إلى العربة',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "تحت الإنشاء",
                      style: GoogleFonts.getFont('Almarai'),
                    ),
                    backgroundColor: Colors.grey.shade700,
                  ),
                );
              },
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
          ),
        ),
      ],
    );
  }
}
