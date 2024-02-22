import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  AppBarWidget(),
                  SizedBox(
                    height: 32,
                  ),
                  NoteWidget(),
                  SizedBox(
                    height: 56,
                  ),
                  StartWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkResponse(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset("assets/back.svg")),
        const SizedBox(
          height: 32,
        ),
        Image.asset("assets/Frame.png"),
      ],
    );
  }
}

class NoteWidget extends StatelessWidget {
  const NoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Lưu ý",
          style: TextStyle(
              color: Color(0xFFF76288),
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          "- Thời gian vòng thi sẽ tính bằng tổng thời gian làm các bài thi.",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: '- Với các vòng tự luyện ',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              TextSpan(
                text: 'điểm thi của bạn phải >=75%',
                style: TextStyle(color: Color(0xFFF76288), fontSize: 14),
              ),
              TextSpan(
                text: 'của vòng thi bạn mới hoàn thành.',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Các trường hợp thi sai luật",
          style: TextStyle(
              color: Color(0xFFF76288),
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        const Text(
            "- Đăng nhập một tài khoản trên hai máy hoặc 2 trình duyệt khác nhau và thi cùng một thời điểm.",
            style: TextStyle(color: Colors.black, fontSize: 14)),
        const Text(
            "- Đang làm bài thi mà tải lại trang đề thi hoặc thoát ra không nộp bài.",
            style: TextStyle(color: Colors.black, fontSize: 14)),
        const SizedBox(
          height: 24,
        ),
        const Text(
            "Các trường hợp vi phạm sẽ bị hệ thống tự động thoát ra ngoài và tính một lần trượt vòng thi.",
            style: TextStyle(color: Colors.black, fontSize: 14))
      ],
    );
  }
}

class StartWidget extends StatelessWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HorizontalScreen()),
        );
      },
      child: Container(
        width: 343,
        height: 52,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(0xFF4BB0EC),
        ),
        child: const Center(
          child: Text(
            "Bắt đầu",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
class HorizontalScreen extends StatelessWidget {
  const HorizontalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              color:  Colors.cyan,
              child: Image.asset("assets/image 16.png", width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,)),
        ),
      ),
    );
  }
}
