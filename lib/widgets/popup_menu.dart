import 'package:flutter/material.dart';
import 'package:instrum/utils/dimensions.dart';

class GeneratePopUpMenu extends StatefulWidget {
  List<String> options;
  IconData icon;
  GeneratePopUpMenu({
    Key? key,
    required this.options,
    required this.icon,
  }) : super(key: key);

  @override
  State<GeneratePopUpMenu> createState() => _GeneratePopUpMenuState();
}

class _GeneratePopUpMenuState extends State<GeneratePopUpMenu> {
  List<PopupMenuEntry> optionlist = [];

  void _GetList() {
    for (int i = 0; i < widget.options.length.toInt(); i++) {
      optionlist.add(PopupMenuItem(
        onTap: () {},
        child: Text(
          widget.options[i],
          style: TextStyle(
            color: Colors.white,
            fontSize: Dimensions.height16,
          ),
        ),
        value: i,
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _GetList();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        offset: Offset(
          Dimensions.width30,
          Dimensions.height20,
        ),
        onSelected: (value) {},
        icon: Icon(
          widget.icon,
          color: Colors.white24,
        ),
        iconSize: Dimensions.height30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.height10),
        ),
        color: Colors.grey.shade700.withOpacity(0.9),
        itemBuilder: (context) => optionlist);
  }
}
