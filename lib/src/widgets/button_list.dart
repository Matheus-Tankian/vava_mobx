import 'package:flutter/material.dart';
import 'package:vava_mobx/src/core/app_colors.dart';
import 'package:vava_mobx/src/widgets/text_button.dart';

class ButtonList extends StatefulWidget {
  const ButtonList({
    super.key,
    required this.onItemSelected,
  });

  final Function(int) onItemSelected;

  @override
  State<ButtonList> createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButtonWidget(
          title: 'Agentes',
          onTap: () {
            setState(() {
              selectedItem = 0;
            });
            widget.onItemSelected(selectedItem);
          },
          textStyle: selectedItem == 0
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.colorWhiteText),
        ),
        TextButtonWidget(
          title: 'Novo',
          onTap: () {
            setState(() {
              selectedItem = 1;
            });
            widget.onItemSelected(selectedItem);
          },
          textStyle: selectedItem == 1
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.colorWhiteText),
        ),
        TextButtonWidget(
          title: 'More',
          onTap: () {
            setState(() {
              selectedItem = 2;
            });
            widget.onItemSelected(selectedItem);
          },
          textStyle: selectedItem == 2
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.colorWhiteText),
        ),
      ],
    );
  }
}
