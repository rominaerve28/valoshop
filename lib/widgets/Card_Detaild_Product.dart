import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:photo_view/photo_view.dart';

class cardProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<String> images = [
      'https://cx.valorbuff.com/blob/BRcfB9CUanCrhXh0KV33iIsrKXK0BtxNitcS51WXhnsri+iX51lXhri3hXpGva0E?w=900',
      'https://cx.valorbuff.com/blob/BRcfB9CUanCOitDnitCsKnb3l1c2BtcVhXpS51C2lnbqKNhbKaxNKXJ2KrpGva0E?w=900',
      'https://cx.valorbuff.com/blob/BRcfB9CUan3NlNiq5tc0lIs0htJ2BtxqKtvS51Kb56bJl1Kslrp7iaKrKa-Gva0E?w=900',
      'https://cx.valorbuff.com/blob/BRcfB9CUanC2KrL3i1C7h6s75tDJBtxXitJShX-2lIsriXLNi1-rl+hr51CGva0E?w=900'
    ];
 return Container(
  width: double.infinity,
  height: size.height * 0.5,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16), // agregar bordes redondeados
  ),
  child: Swiper(
    itemCount: images.length,
    layout: SwiperLayout.STACK,
    itemWidth: size.width * 0.8,
    itemHeight: size.height * 0.8,
    itemBuilder: (_, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: PhotoView(
          backgroundDecoration: BoxDecoration(color: Color.fromARGB(144, 214, 211, 211),
          borderRadius: BorderRadius.circular(30)
          ),
          imageProvider: NetworkImage(images[index]),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 1.0,
          initialScale: PhotoViewComputedScale.contained,
          loadingBuilder: (context, event) => Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    },
  ),
);
  }
}
