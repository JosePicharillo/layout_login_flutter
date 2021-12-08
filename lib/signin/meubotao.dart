import 'package:flutter/material.dart';

class meubotao extends StatelessWidget {
  String texto;
  Color colorText;
  Color colorButton;
  String image;

  meubotao(this.texto, this.colorText, this.colorButton, this.image);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Text(
              texto,
              style: TextStyle(
                color: colorText,
                fontSize: 15.0,
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Image.asset(image),
            ),
          ],
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: colorButton,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
      ),
    );
  }
}
