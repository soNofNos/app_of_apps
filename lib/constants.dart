import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Colors
const primaryColor = Color(0xFF05911D);
const bodyTextColor = Color(0xFF5E5E5E);
const bodyTextColorDark = Color(0xFF282828);
const textHeadingColor = Color(0xFF44AC56);
const smallHeadingColor = Color(0xFF282828);
const mediumHeadingColor = Color(0xFF5E5E5E);
const errorColor = Color(0xFFEF3636);
const linkColor = Color(0xFF003DB5);
const successColor = Color(0xFF2ECC71);
const buttonColor = Color(0xFF4C982A);
const buttonHoverColor = Color(0xFF72AB58);
const buttonDiasbledColor = Color(0xFFBFD2B6);
const inputBorderColor = Color(0xFF05911D);
const buttonTextColor = Color(0xFFFFFFFF);

//Text Size
const textHeaderSize1 = 40.0;
const textHeaderSize2 = 32.0;
const textHeaderSize3 = 24.0;
const textHeaderSize4 = 20.0;
const textHeaderSize5 = 18.0;
const bodyTextSize1 = 18.0;
const bodyTextSize2 = 16.0;
const bodyTextSize3 = 14.0;
const smallTextSize = 10.0;

//Text Styling
const largeHeadingtextStyle = TextStyle(
  fontSize: textHeaderSize2,
  color: textHeadingColor,
  fontFamily: 'Poppins',
);

const smallHeadingtextStyle = TextStyle(
  fontSize: textHeaderSize4,
  color: smallHeadingColor,
  fontFamily: 'Poppins',
);

const bodytextStyle = TextStyle(
  fontSize: bodyTextSize1,
  color: bodyTextColorDark,
  fontFamily: 'Poppins',
);

const bodytextStyle2 = TextStyle(
  fontSize: bodyTextSize2,
  color: Color(0xFF000000),
  fontFamily: 'Roboto',
);

const bodytextStyle3 = TextStyle(
  fontSize: bodyTextSize3,
  color: Color(0xFF000000),
  fontFamily: 'Roboto',
);

const smallHeadingtextStyle2 = TextStyle(
  fontSize: textHeaderSize3,
  color: smallHeadingColor,
  fontFamily: 'Poppins',
);

const smallBodytextStyle = TextStyle(
  fontSize: smallTextSize,
  color: smallHeadingColor,
  fontFamily: 'Poppins',
);

const mediumBodytextStyle = TextStyle(
  fontSize: bodyTextSize3,
  color: mediumHeadingColor,
  fontFamily: 'Poppins',
);




class CustomFormTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String formLabelText;
  final String textBottomCaption;
  final Widget suffixIcon;
  final int expandedFlexNo;
  final String hintText;
  final double cursorHeight;

  CustomFormTextField({
    @required this.textInputType,
    @required this.formLabelText,
    @required this.expandedFlexNo,
    this.textBottomCaption,
    this.cursorHeight,
    this.suffixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandedFlexNo,
      child: Form(
        // key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formLabelText,
              style: bodytextStyle,
            ),
            SizedBox(height: 5.0),
            TextFormField(
              cursorHeight: cursorHeight,
              style: bodytextStyle2,
              keyboardType: textInputType,
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.fromLTRB(8, 8, 8, 8),
                suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: bodytextStyle2,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: inputBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: inputBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Text(
              textBottomCaption,
              style: mediumBodytextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
