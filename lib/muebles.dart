import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2_etps3/detalle.dart';

class muebles extends StatelessWidget {
  late String image;
  late String title;
  late String flavour;
  late String price;

  muebles(this.image, this.title, this.flavour, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(13)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: (detalle()),
                    type: PageTransitionType.scale,
                    alignment: Alignment.center,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 0.01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "\$" + price,
                              style: const TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xff7025c),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 22,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
