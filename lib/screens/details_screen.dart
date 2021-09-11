import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/details/details_body.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          padding: const EdgeInsets.only(right: defaultPadding),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.blue.shade500,
        ),
        title: Text(
          'رجوع',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
