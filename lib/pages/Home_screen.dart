import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0x000d0d0d),
        body: Stack(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // width: double.infinity,
                  // height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/home_pattern.png"),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                        opacity: 0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Find Your\nFavorite Food",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 31,
                                  fontWeight: FontWeight.w700),
                              softWrap: true,
                            ),
                            Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Center(
                                child: Icon(Icons.notifications_active_outlined,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 250.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 48, 46, 46),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(
                                    Icons.search_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "What do you want to order?",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 48, 46, 46),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Icon(
                                Icons.legend_toggle_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // _restaurantCard("res_01", "Test", "Hi"),
                      // _restaurantCard("res_01", "Test", "Hi"),
                      // _restaurantCard("res_01", "Test", "Hi"),
                      _homeCard(),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nearest Restaurant",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            Text(
                              "View More",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          height: 184,
                          // width: 1000,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              // padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              padding: EdgeInsets.only(right: 10.0),
                              child:
                                  _restaurantCard("res_01", "Test", "12 Mins"),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Menu",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            Text(
                              "View More",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          height: 184,
                          // width: 1000,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              // padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              padding: EdgeInsets.only(right: 10.0),
                              child:
                                  _restaurantCard("res_01", "Test", "12 Mins"),
                            ),
                          ),
                        ),
                      ),
                      _homeCard(),
                      // _homeCard(),
                      // _homeCard(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: const Alignment(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.red,
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.black,
                    showUnselectedLabels: false,
                    currentIndex: 0,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.notifications),
                        label: 'Notifications',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                    ],
                    onTap: (index) {
                      // Handle BottomNavigationBarItem tap
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _restaurantCard(String img, String title, String subtitle) {
  return Container(
    width: 147.0,
    height: 184.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/restaurants/$img.png"),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.white60,
          ),
        ),
      ],
    ),
  );
}

Widget _homeCard() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Container(
      width: 325.0,
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
        image: const DecorationImage(
          image: AssetImage("assets/images/home_c.png"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Special Deal For\nOctober",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: true,
                ),
                Container(
                  width: 82,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
