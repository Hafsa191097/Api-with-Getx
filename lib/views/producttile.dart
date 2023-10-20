import 'package:flutter/material.dart';
import '../models/modellist.dart';

class ProductTile extends StatelessWidget {
  final Images product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    product.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned(
                //   right: 0,
                //   child: Obx(() => CircleAvatar(
                //         backgroundColor: Colors.white,
                //         child: IconButton(
                //           icon: product.isfav
                //               ? Icon(Icons.favorite_rounded)
                //               : Icon(Icons.favorite_border),
                //           onPressed: () {
                //             product.isfav.toggle();
                //           },
                //         ),
                //       )),
                // )
              ],
            ),
            SizedBox(height: 8),
            Text(
              product.id,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            
            SizedBox(height: 8),
            Text('${product.name}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}