
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWgt extends StatelessWidget {
  final double? fontSize;
  final String? hintText;
  final String? labelText;
  final double? height;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final Color? fontColor;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool? enable;
  int? maxLength;

  TextFormFieldWgt({
    Key? key,
    this.fontSize,
    this.maxLength,
    this.controller,
    this.validator,
    this.margin,
    this.height,
    this.borderRadius,
    this.padding,
    this.onChanged,
    this.fontColor,
    this.hintText,
    this.width,
    this.enable,
    this.labelText,
    this.autofocus = false,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width,
        height: height ?? 55,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 0),
        child: Form(
          child: TextFormField(
            enabled: enable ?? true,
            keyboardType: keyboardType,
            controller: controller,
            autofocus: autofocus ?? false,
            validator: validator,
            cursorColor: Colors.blue,
            maxLength: maxLength,
            style: TextStyle(
                fontSize: fontSize ?? 16,
                color: fontColor ?? Colors.black,
                fontFamily: GoogleFonts.inter().fontFamily,),
            cursorWidth: 1,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: labelText,
              contentPadding: EdgeInsets.all(18),
              labelStyle: TextStyle(color:Colors.blue,fontFamily: GoogleFonts.lato().fontFamily,fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10,),
                borderSide: BorderSide(color: Colors.grey.shade100,width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.blue,width: 2),
              ),
              hintText: hintText ?? "Enter Value",
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: fontSize ?? 14,
                  fontWeight: FontWeight.w100,
                  fontFamily: GoogleFonts.lato().fontFamily,),
              errorBorder: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red, fontSize: 08),
            ),
          ),
        ));
  }
}
