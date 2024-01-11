import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/widgets/widgets.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: const Color(0xff7A98A7).withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FancyShimmerImage(
                      imageUrl:
                          'https://lh3.googleusercontent.com/pw/ABLVV84U3IkTLKIljV0eXRGAt8fFGvzzPLaJ1zbuXW7OuoRzYir_suwThLYqCQqup3w1MhyBUJUMN_OwuufqlWPt5G-tL-djt5bbNEXA9yZ3bzGxnfaOJBksTVhodfssqOQEcyxcEXzibLAJhLcQAuIlttnMHoCk1NsaEeVnig5oUD2l0uPBIOUCe2rTgFLIwywSz2WanoxVQBjhu81ERYIGTpW7_iyd9RYRoFKZJQXjgemcnFY9E5ae3qzDeOExAjZHyI20fBLSTawozkGKJX2bWY3O0V94qdOlAOx9TTP7l8a0NCdSpynn1NK1hCwRJMj_DkLWA8lvQyno4SaBNH267R7KtfpNHoXi4qxo7zbRh4U_5U7UR7RnPg8zRNDa8HozEDkI0qnJuqaHZ4Y0wdw5i9nFqGAeR6iAw6Esd3XtiqRvhENRCXcva5oz7XxB0e2lAjomdKSa3IiUP4zcuCIxUprTOK-pWvANfrKzg-kVXttte33zqfm1DyLrjKvyh8P_JLnX3pixypGTdlyRcKqMmL2tJaLpNJx51qllJSb9OOrOS7T6LybwaKRgOC7WJt3O46N0PF5wzsThPY1Kz-fNZavttJuDigszc1PfYbbBy9poCvwwcuXL1nRvmzBKX4sKIMxeJCV2NBR0gw_GvweD1NPebVZWr6HvFEVy4ZR1T42IqMv_hL1g1TUg6u_7ELgtOsXSGZ7q37iZQHcAAuAcZEeAG9EatEJHOvi7wzsSLqFuyZD4al4ywRh2bxy9yV3NM8cslVh9t63gt1AMImnP47bnrx2E3g-f6qlfrubM9T1Ro2BbrYvsPg0rlS_Has9oz6lxVPOP8EnZl2DH9Nh3vViNAbjGPuR08bXJ6PtcCiTCn0mYYhOQmXG3LbbSkR6A1b9GD9g=w903-h903-s-no-gm?authuser=0',
                      height: size.height * 0.12,
                      width: size.height * 0.12,
                      boxFit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Text(
                          '1 KG',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                IconlyLight.bag2,
                                size: 22,
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            GestureDetector(
                              child: const Icon(
                                IconlyLight.heart,
                                size: 22,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const PriceWidget(),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Product name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
