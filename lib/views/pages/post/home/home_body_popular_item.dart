import 'package:airbnb_app/core/constants.dart';
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3- 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _popularItemImage(),
              _popularItemStar(),
              _popularItemComment(),
              _popularItemUserinfo(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _popularItemUserinfo() {
    return SizedBox(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/p1.jpeg"),
                  ),
                  SizedBox(width: gap_s),
                  Column(
                    children: [
                      Text(
                        "데어",
                        style: subtitle1(),
                      ),
                      Text("한국"),
                    ],
                  )
                ],
              ),
            );
  }

  SizedBox _popularItemComment() {
    return SizedBox(
              child: Column(
                children: [
                  Text("깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기서 살고 싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는 것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니당 ㅎㅎ",
                  style: body1(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: gap_s),
                ],
              ),
            );
  }

  SizedBox _popularItemStar() {
    return SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: KAccentColor),
                      Icon(Icons.star, color: KAccentColor),
                      Icon(Icons.star, color: KAccentColor),
                      Icon(Icons.star, color: KAccentColor),
                      Icon(Icons.star, color: KAccentColor),
                    ],
                  ),
                  SizedBox(height: gap_s,)
                ],
              ),
            );
  }

  SizedBox _popularItemImage() {
    return SizedBox(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover,),
                  ),
                  SizedBox(height: gap_s,),
                ],
              ),
            );
  }
}
