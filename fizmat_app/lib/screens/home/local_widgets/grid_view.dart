import 'package:fizmat_app/screens/home/local_widgets/container.dart';
import 'package:flutter/material.dart';

class FizHomeContainerInfo {
  final String title;
  final Widget pages;
  final Color color;
  FizHomeContainerInfo({
    required this.pages,
    required this.title,
    required this.color,
  });
}

class FizHomeGridView extends StatelessWidget {
  final List<FizHomeContainerInfo> containerInfoList;

  FizHomeGridView({
    super.key,
    required this.containerInfoList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // 使GridView根据其子项调整大小
      physics: NeverScrollableScrollPhysics(), // 禁用GridView自身的滚动
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemCount: containerInfoList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(25.0),
          child: FizHomeContainer(
            title: containerInfoList[index].title,
            page: containerInfoList[index].pages,
            color: containerInfoList[index].color,
          ),
        );
      },
    );
  }
}
