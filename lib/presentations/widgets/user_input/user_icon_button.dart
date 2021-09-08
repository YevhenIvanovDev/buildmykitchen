import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class UserIconButton extends StatefulWidget {
  final String imagePath;
  final int id;
  final String iconTitle;
  Function onPress;

  UserIconButton({
    required this.onPress,
    required this.iconTitle,
    required this.id,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  _UserIconButtonState createState() => _UserIconButtonState();
}

class _UserIconButtonState extends State<UserIconButton> {
  Color _color = KitchenColors.lightBlueGrey;
  bool _isIconTapped = false;
  String? snackBarValue;

  void changeIconById(int id) {
    if (_isIconTapped == true) {
      _color = KitchenColors.corp;
    } else {
      _color = KitchenColors.lightBlueGrey;
    }
  }

  void showSnackBar(BuildContext context, String snackBarText) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        snackBarText,
        style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
      backgroundColor: KitchenColors.lightBlueGrey,
      duration: const Duration(seconds: 1),
      shape: const StadiumBorder(),
    ));
  }

  String snackBarText(int id) {
    switch (id) {
      case 0:
        return snackBarValue = 'Herd';
      case 1:
        return snackBarValue = 'Hängeschränke';
      case 2:
        return snackBarValue = 'Waschmaschine';
      case 3:
        return snackBarValue = 'Spülmaschine';
      case 4:
        return snackBarValue = 'Zuschnitt arbeitsplatte';
      case 5:
        return snackBarValue = 'Gebrauchte Küche';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 100,
        onPressed: () {
          setState(() {
            _isIconTapped = !_isIconTapped;
            snackBarText(widget.id);
            changeIconById(widget.id);
            showSnackBar(context, '$snackBarValue');
            widget.onPress(widget.id);
          });
        },
        icon: Image.asset(
          widget.imagePath,
          color: _color,
        ));
  }
}
