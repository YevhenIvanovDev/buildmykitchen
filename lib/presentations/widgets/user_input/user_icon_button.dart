import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

bool _isIconTapped = false;

class UserIconButton extends StatefulWidget {
  final String imagePath;
  final int id;
  const UserIconButton({
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

  String changeIconById(int id) {
    if (_isIconTapped == true) {
      _color = KitchenColors.corp;
      return 'Ja';
    } else {
      _color = KitchenColors.lightBlueGrey;
      return 'Nein';
    }
  }

  bool isItemChosen() {
    if (_isIconTapped) {
      return true;
    }
    return false;
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

  String? snackBarValue;

  String snackBarText(int id) {
    switch (id) {
      case 1:
        return snackBarValue = 'Herd';
      case 2:
        return snackBarValue = 'Hängeschränke';
      case 3:
        return snackBarValue = 'Waschmaschine';
      case 4:
        return snackBarValue = 'Spülmaschine';
      case 5:
        return snackBarValue = 'Zuschnitt arbeitsplatte';
      case 6:
        return snackBarValue = 'Gebrauchte Küche';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 80,
        onPressed: () {
          setState(() {
            _isIconTapped = !_isIconTapped;
            snackBarText(widget.id);
            changeIconById(widget.id);
            showSnackBar(context, '$snackBarValue');
            //  isItemChosen();
          });
        },
        icon: Image.asset(
          widget.imagePath,
          color: _color,
        ));
  }
}
