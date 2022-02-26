import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Pictures"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(3),
        crossAxisCount: 3,
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs9zBLi6cVz13IGe4tGUJQ_bxlgc8gojWosg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5YPN4BMrwFvvFJlsdxDqbosj4bT2L_3xvcQ&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL23t1ekzjdJV-8tCEb04b_qyvwWTv2jAnxg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReI5oQ9WF8jqYFnxY4IqzKnyI3gGQPoAZVfg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRseeX8ugeGUSC4XEeu3BTSNicOkOheFw3Mw&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_X55SY3RrRyc_MYzbc4LC55jga-kkWG2ZtA&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkMR3P5Gtda_C10RACRaC-JANQk3U_ZLcZww&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwLtavf5OEycdlKbxuhyE72qnOOqcX7jPYRg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGAUfZ9Am7YZumu_YDpXPZDI-A-T60NH_YRA&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKpNxXR6L0M6HJ9YTNsBQzYiAz162UYuslBg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiTKANpsv8lOkM_mvzBXqcXXqqMucGHt-Zlg&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT-KHeWk66-CQkHkBI1wxA-AcfDPwogtEzYA&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK2MCIHVkm_ERt6NZTH24v0R4NOAroeMBU_A&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd0LyDKSFucXvEFxA23_oJZnF0i5v7K4_-hQ&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyuhTU5fQco_5VN1N5vuQUijSLXyKlydH8GQ&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTunUk4A3Nog_eYSI2pmu0om9WEkKGHlNnh5Q&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcsXhdW1lsPUUntqrYcxclnGWePnLhDmBkuA&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTisiyvbCZpcDTGYaGLY1ZtY_pG46ROws0eXw&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdB-TKA2d-21SCPkX0K4I1gQuch3p238gl1g&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz64kMFhyEvDtKk_ut2m-YMcsGm39pzbUw4A&usqp=CAU",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtzk1x9X7wcbzcFhaECPf0ioqfgfEwlZryfg&usqp=CAU",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
