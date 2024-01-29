import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../image.dart';

class InforPage extends StatefulWidget {
  const InforPage({Key? key}) : super(key: key);

  @override
  State<InforPage> createState() => _InforPageState();
}

class _InforPageState extends State<InforPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Appbar(),
              SizedBox(height: 16),
              InkResponse(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/back.svg")),
              SizedBox(
                height: 16,
              ),
              News(),
              SizedBox(
                height: 16,
              ),
              Interested(),
              SizedBox(
                height: 16,
              ),
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

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset("assets/image 14.png"),
          const SizedBox(
            height: 32,
          ),
          const Text('"Tri thức trẻ vì giáo dục" vinh danh 5 giải xuất sắc',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFF2E2E2E)),),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                "Chương trình do Trung ương Đoàn, Bộ Giáo dục và Đào tạo, báo Tuổi Trẻ, "
                "cùng Công ty Cổ phần Tập đoàn Thiên Long phối hợp tổ chức tại Hà Nội vào ngày 9/11."
                ),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                "Đại diện ban tổ chức cho biết, lần đầu tiên sau 4 năm tổ chức, có tối đa 5 công trình, sáng kiến xuất sắc. "
                "Mỗi công trình được trao kỷ niệm chương "
                "Tuổi trẻ sáng tạo của Trung ương Đoàn, bằng khen của Bộ Giáo dục và Đào tạo cùng phần quà tiền mặt 100 triệu đồng."),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                '5 tác giả đại diện nhận giải thưởng xuất sắc của chương trình '"Tri thức trẻ vì giáo dục năm 2019."),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                "Trong 5 công trình đạt giải xuất sắc có "
                "4 công trình thuộc nhóm chủ đề sáng tạo, chế tạo ra các công cụ phục vụ giảng dạy, học tập, bao gồm:"),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                'Công trình "Sách Sinh học lớp 10 ứng dụng công nghệ thực tế ảo tăng cường" '
                'gồm 5 sản phẩm công nghệ ứng dụng vào dạy và học của tác giả Võ Nguyễn Đình Trí, Nguyễn Quang Đức ở Đà Nẵng;'),
          ),
          SizedBox(height: 16,),
          Image.asset("assets/image 15.png"),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text('Tác giả Nguyễn Sỹ Nam thuyết trình đề án'
                "Nghiên cứu, thiết kế quy trình công nghệ chế tạo thiết bị dạy học"
                " môn toán dành cho học sinh khiếm thị trong môi trường giáo dục hòa nhập."),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                "Ngoài ra, có 8 công trình, sáng kiến được trao giải Cống hiến gồm: "
                "bằng khen của Trung ương Đoàn, bằng khen của Bộ Giáo dục và Đào tạo và tiền thưởng 10 triệu đồng."),
          ),
          SizedBox(height: 16,),
          const SizedBox(
            width: 343,
            child: Text(
                "Phát biểu tại lễ trao thưởng, ông Bùi Quang Huy, Bí thư Trung ương Đoàn, Chủ tịch Trung ương Hội Sinh viên Việt Nam đánh giá, chương"
                " trình Tri thức trẻ vì giáo dục thực sự là một sân chơi trí tuệ, khoa học và có ý nghĩa với sự nghiệp trồng người."),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: const Text(
              "Nha Trang (ST)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
          ),
        ],
      ),
    );
  }
}

class Interested extends StatelessWidget {
  const Interested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Có thể bạn quan tâm", style: TextStyle(
        fontSize: 16,
        color: Color(0xFF7D8895),
        fontWeight: FontWeight.w700),),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 10),
              ...List.generate(
                4,
                    (index) => Row(
                  children: [
                    Container(
                      width: 310,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, -10),
                          ),
                        ],
                      ),
                      child: const News1(
                        name: "Bà Ngô Thị Minh được Thủ tướng điều động ...",
                        image: "assets/Rectangle 20.png",
                      ),
                    ),
                    const SizedBox(width: 10), // Thêm khoảng cách giữa các Container
                  ],
                ),
              ),
            ],
          ),
        )
      ],
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
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(image)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 166,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2E2E2E),
                        fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                  width: 166, child: Text("Ban tổ chức cuộc thi Olympic...",style: TextStyle(color: Color(0xFFBEC3C9),fontSize: 12,fontWeight: FontWeight.w400),)),
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
