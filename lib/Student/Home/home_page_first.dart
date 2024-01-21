import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Student/Home/News_page.dart';
import 'package:untitled/Student/Home/infor_page.dart';
import 'package:untitled/Student/image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Appbar(),
              Welcome(),
              SizedBox(
                height: 30,
              ),
              Information(),

              News(),

              VTC(),
            ],
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/image 7.jpg",
                    width: 18,
                    height: 18,
                  ),
                  const Text(
                    "Ban chỉ đạo",
                    style: TextStyle(color: Color(0xFFBEC3C9), fontSize: 12),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/image 9.png"),
                  const Text(
                    "Đơn vị thực hiện ",
                    style: TextStyle(color: Color(0xFFBEC3C9), fontSize: 12),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/image 8.png"),
                  const Text(
                    "Đơn vị đồng hành ",
                    style: TextStyle(color: Color(0xFFBEC3C9), fontSize: 12),
                  )

                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black12,
                width: 0.5,
              ),
            ),
          ),
          width: 500,
          height: 1,
        )
      ],
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset("assets/image 4.png"),
              const SizedBox(
                width: 11,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 155,
                    child: Text(
                      "Xin chào",
                      style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    "Chào mừng bạn đến với IOE!",
                    style: TextStyle(
                        color: Color(0xFFBEC3C9),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 80,
          width: 344,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xFF4BB0EC)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/avt.png"),
                const SizedBox(
                  width: 156,
                  child: Text(
                    "Đăng nhập để khám phá nhiều hơn nữa nhé",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    width: 81,
                    height: 32,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                            color: Color(0xFF008BCC),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 500,
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const InforPage()));
                  },
                  child: a("Tin từ ban tổ chức")),
              const SizedBox(
                width: 23,
              ),
              Column(
                children: [
                  const Text(
                    "Sự kiện",
                    style: TextStyle(
                        color: Color(0xFF404D59),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Container(
                    width: 40,
                    height: 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      color: Color(0xFFF76288),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 23,
              ),
              InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const InforPage()));
                  },
                  child: a("Tin tức muôn nơi")),
              const SizedBox(
                width: 23,
              ),
              InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const InforPage()));
                  },
                  child: a("Tạp chí tiếng anh")),
            ],
          ),
        ),
        SizedBox(
          width: 500,
          height: 320,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              tintuc(
                  "assets/Rectangle 17.png",
                  "Thi THPT quốc gia 2019 sẽ thay đổi như thế nào?",
                  "14:15",
                  "11/09/2020",
                  "123,444"),
              tintuc(
                  "assets/Rectangle 17.png",
                  "Thi THPT quốc gia 2019 sẽ thay đổi như thế nào?",
                  "14:15",
                  "11/09/2020",
                  "123,444"),
              tintuc(
                  "assets/Rectangle 17.png",
                  "Thi THPT quốc gia 2019 sẽ thay đổi như thế nào?",
                  "14:15",
                  "11/09/2020",
                  "123,444"),
              tintuc(
                  "assets/Rectangle 17.png",
                  "Thi THPT quốc gia 2019 sẽ thay đổi như thế nào?",
                  "14:15",
                  "11/09/2020",
                  "123,444"),
            ],
          ),
        ),
      ],
    );
  }

  Widget a(final String a) {
    return Text(
      a,
      style: const TextStyle(
          color: Color(0xFFBEC3C9), fontWeight: FontWeight.w600, fontSize: 16),
    );
  }

  Widget tintuc(final String images, final String name, final String times,
      final String date, final String number) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned(
            top: 130,
            child: Container(
              width: 340,
              height: 144,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 280,
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF2E2E2E),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 229,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(time),
                          Text(
                            date,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFFBEC3C9),
                                fontWeight: FontWeight.w400),
                          ),
                          SvgPicture.asset(tron),
                          Text(
                            times,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFFBEC3C9),
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 2,
                            height: 16,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Color(0xFFF87395)),
                          ),
                          SvgPicture.asset("assets/Show.svg"),
                          Text(
                            number,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFFBEC3C9),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            images,
          ),
          Positioned(
            top: 120,
            left: 10,
            child: Container(
              width: 55,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF76288)),
              child: const Center(
                child: Text(
                  "Nổi bật",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600,color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkResponse(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const NewsPage()));
              },
              child: const Text(
                "Tin mới nhất",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7D8895),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: const News1(
                name: "Bà Ngô Thị Minh được Thủ tướng điều động ...",
                image: "assets/Rectangle 20.png"),
          ),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: const News1(
                name: "Bà Ngô Thị Minh được Thủ tướng điều động ...",
                image: "assets/Rectangle 20.png"),
          ),


        ],
      ),
    );
  }
}

class News1 extends StatelessWidget {
  const News1({Key? key, required this.name, required this.image})
      : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(image)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 199,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2E2E2E),
                        fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                  width: 199, child: Text("Ban tổ chức cuộc thi Olympic...",style: TextStyle(color: Color(0xFFBEC3C9),fontSize: 12,fontWeight: FontWeight.w400),)),
              const SizedBox(height: 24,),
              SizedBox(
                width: 135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(time),
                    const Text(
                      "11/09/2020",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFBEC3C9),
                          fontWeight: FontWeight.w400),
                    ),
                    SvgPicture.asset(tron),
                    const Text(
                      "14:15",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFBEC3C9),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
        )
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
        const Text("Phát triển bởi VTC",style: TextStyle(color: Color(0xFFBEC3C9)),),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(tron),
        const SizedBox(
          width: 5,
        ),
        const Text("Hotline: 1900636876",style: TextStyle(color: Color(0xFFBEC3C9)))
      ],
    );
  }
}
