import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Student/image.dart';

class HomePageSecond extends StatefulWidget {
  const HomePageSecond({Key? key}) : super(key: key);

  @override
  State<HomePageSecond> createState() => _HomePageSecond();
}

class _HomePageSecond extends State<HomePageSecond> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _AppBarWidget(),
              SizedBox(
                height: 20,
              ),
                _AWidget()
            ],
          ),
        ),
      ),
    ));
  }
}

class _AWidget extends StatelessWidget {
  const _AWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Padding(
        padding: EdgeInsets.only(left: 7),
        child: Column(
          children: [
            Expanded(child: _ListItemWidget()),
            _TextWidget(),
            SizedBox(
              height: 20,
            ),
            _Item1Widget(),
            SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bảng xếp hạng",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7D8895),
                      fontWeight: FontWeight.w700),
                )),
            SizedBox(
              height: 20,
            ),
            _ItemWidget(),
            SizedBox(
              height: 60,
            ),
            VTC(),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 208,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Color(0xFF4BB0EC),
            ),
            child: const _WelcomeWidget(),
          ),
            const Positioned(
              top: 70,
                child: _NameWidget())
        ],
      ),
    );
  }
}

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/logo.png"),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "XIN CHÀO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Chào mừng bạn đến với IOE!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset("assets/social2.svg")
        ],
      ),
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(66, 66, 66, 01),
              blurRadius: 20,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/avt.png",
                  height: 35,
                  width: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Trần Đình Đức",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 21,
                            width: 86,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFE8E8),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Chưa xác thực',
                                  style: TextStyle(fontSize: 10, color: Color(0xFFF76288),fontWeight: FontWeight.w500),
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 187,
                      child: Row(
                        children: [
                          const Text(
                            "ID: ",
                            style:
                                TextStyle(fontSize: 11, color: Color(0xFF7D8895)),
                          ),
                          const Text(
                            "123971847",
                            style:
                                TextStyle(fontSize: 11, color: Color(0xFFBEC3C9)),
                          ),
                          const SizedBox(width: 8,),
                          SvgPicture.asset("assets/Rectangle 46.svg"),
                          const SizedBox(width: 8,),
                          const Text(
                            "Khối: ",
                            style:
                                TextStyle(fontSize: 11, color: Color(0xFF7D8895)),
                          ),
                          const Text(
                            "3",
                            style:
                            TextStyle(fontSize: 11, color: Color(0xFFBEC3C9)),
                          ),
                          const SizedBox(width: 8,),
                          SvgPicture.asset("assets/Rectangle 46.svg"),
                          const SizedBox(width: 8,),
                          const Text(
                            "Lớp:",
                            style:
                                TextStyle(fontSize: 11, color: Color(0xFF7D8895)),
                          ),
                          const Text(
                            " 3A",
                            style:
                            TextStyle(fontSize: 11, color: Color(0xFFBEC3C9)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16,),
            SizedBox(
              height: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bạn đã tự luyện:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("10/35 vòng",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFFF76288)),),
                      const SizedBox(height: 8,),
                      SvgPicture.asset("assets/Group 38.svg")
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 0.5,
                  ),
                ),
              ),
              width: 290,
              height: 1,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 290,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RichText(
                       text: const TextSpan(
                         text: "Số lượt thi: ",
                         style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
                         children: <TextSpan>[
                           TextSpan(text: '30', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Color(0xFFF76288))),
                         ],
                       ),
                     ),
                     RichText(
                       text: const TextSpan(
                         text: "Số dư Go: ",
                         style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
                         children: <TextSpan>[
                           TextSpan(text: '30', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Color(0xFFF76288))),
                         ],
                       ),
                     )
                   ],
                      ),
                  Container(
                    width: 147,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF4BB0EC)),
                    child: const Center(child: Text("Nạp thêm lượt thi",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),)),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class _ListItemWidget extends StatelessWidget {
  const _ListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: GridView.builder(
            itemCount: _buttons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 50,
              mainAxisSpacing: 30,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
                child: GridTile(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(3, 3, 3, 0),
                      child: Column(
                        children: [
                          Container(
                            width: 88,
                            height: 64,
                            decoration: const BoxDecoration(
                                color: Color(0xFFCBCBCB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: SvgPicture.asset(
                                    _buttons[index].image,
                                    width: 36,
                                    height: 36,
                                  )),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            _buttons[index].name,
                            style: const TextStyle(
                                fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}

class MyButton {
  final String name;
  final String image;

  MyButton({required this.name, required this.image});
}

List<MyButton> _buttons = [
  MyButton(name: 'Tự luyện', image: 'assets/pen.svg'),
  MyButton(name: 'Thi thử', image: 'assets/clock.svg'),
  MyButton(name: 'Kết quả thi', image: 'assets/document.svg'),
  MyButton(name: 'Thống kê', image: 'assets/man.svg'),
  MyButton(name: 'Sổ liên lạc', image: 'assets/aplus.svg'),
  MyButton(name: 'Từ điển', image: 'assets/book.svg'),
];

class _TextWidget extends StatelessWidget {
  const _TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Tin tức",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7D8895),
                fontWeight: FontWeight.w700),
          ),
          Text("Xem thêm",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF008BCC),
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class _Item1Widget extends StatelessWidget {
  const _Item1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _InformationWidget(
              news: "Bà Ngô Thị Minh được Thủ tướng điều động ...  ",
              image: "assets/Rectangle 20.png"),
          SizedBox(
            width: 20,
          ),
          _InformationWidget(
              news: "Bà Ngô Thị Minh được Thủ tướng điều động ... ",
              image: "assets/Rectangle 20.png"),
          SizedBox(
            width: 20,
          ),
          _InformationWidget(
              news: "Bà Ngô Thị Minh được Thủ tướng điều động ...  ",
              image: "assets/Rectangle 20.png"),
        ],
      ),
    );
  }
}

class _InformationWidget extends StatelessWidget {
  const _InformationWidget({
    Key? key,
    required this.news,
    required this.image,
  }) : super(key: key);
  final String news;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 0.1,
            offset: const Offset(0, 1),

          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 68,
            height: 87,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  news,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(time),
                    const Text(
                      "11/09/2020",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFBEC3C9),
                          fontWeight: FontWeight.w400),
                    ),
                    SvgPicture.asset(tron),
                    const Text(
                      "14:15",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFBEC3C9),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _StatisticalWidget extends StatelessWidget {
  const _StatisticalWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.name,
      required this.colors,
      required this.color})
      : super(key: key);
  final String image;
  final String title;
  final String name;
  final String colors;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(66, 66, 66, 01),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: TextStyle(fontSize: 16, color: color,fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  SvgPicture.asset(colors),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFFBEC3C9)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _StatisticalWidget(
          image: "assets/cup1.svg",
          title: "Tuần 12 (02/11 - 08/11/2020)",
          name: "Xếp hạng tự luyện vòng 12",
          colors: "assets/Ellipse 7.svg",
          color: Color(0xFFF76288),
        ),
        SizedBox(
          height: 8,
        ),
        _StatisticalWidget(
          image: "assets/cup1.svg",
          title: "Tuần 12 (02/11 - 08/11/2020)",
          name: "Xếp hạng thi thử tuần",
          colors: "assets/8.svg",
          color: Color(0xFF3CCC97),
        ),
      ],
    );
  }
}

class VTC extends StatelessWidget {
  const VTC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Phát triển bởi VTC",
          style: TextStyle(color: Color(0xFFBEC3C9)),
        ),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(tron),
        const SizedBox(
          width: 5,
        ),
        const Text("Hotline: 1900636876",
            style: TextStyle(color: Color(0xFFBEC3C9)))
      ],
    );
  }
}
