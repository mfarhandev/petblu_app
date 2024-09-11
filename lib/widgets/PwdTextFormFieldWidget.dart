


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PwdTextFormFieldWidget extends StatefulWidget {

  final double? fontSize;
  final String? hintText;
  final double? height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final Color? fontColor;
  final double? width;
  final String? labelText;


  final void Function(String)? onChanged;
   PwdTextFormFieldWidget({
          Key? key,
          this.fontSize,
          this.height,
          this.controller,
          this.validator,
          this.onChanged,
          this.fontColor,
          this.hintText,
          this.width,
          this.labelText,
          this.autofocus=false,
        }) : super(key: key);

  @override
  State<PwdTextFormFieldWidget> createState() => _PwdTextFormFieldWidgetState();
}

class _PwdTextFormFieldWidgetState extends State<PwdTextFormFieldWidget> {

    bool isPaasword = true;
  @override
  Widget build(BuildContext context){
    return Container(
        alignment: Alignment.center,
        width: widget.width,
        height: widget.height ?? 55,
        padding:  EdgeInsets.symmetric(horizontal: 0),
      child: Form(
        child: TextFormField(
          controller: widget.controller,
          autofocus: widget.autofocus ?? false,
          validator: widget.validator,
          cursorColor: Colors.blue,
          obscureText: isPaasword,
          style: TextStyle(
              fontSize:widget.fontSize??16,
              color:  Colors.black,
              fontFamily: GoogleFonts.inter().fontFamily,
          ),
          cursorWidth: 1,
          decoration: InputDecoration(

            suffixIcon:  GestureDetector(
              onTap: () {
                setState(() {
                  isPaasword =! isPaasword;
                });
              },
              child: Icon(
                isPaasword ? Icons.visibility :Icons.visibility_off,
                color: isPaasword ? Colors.grey :Colors.blue,
                size: 24,
              ),
            ),
            contentPadding: EdgeInsets.all(18),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.labelText,
            labelStyle: TextStyle(color: Colors.blue,
              fontSize: 14,
              fontFamily: GoogleFonts.lato().fontFamily,),
            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade100,width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue,width: 2),
            ),
            hintText: widget.hintText ?? "******",
            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w100,fontFamily: GoogleFonts.lato().fontFamily, ),
            errorBorder: InputBorder.none,
            errorStyle: TextStyle(color: Colors.red,fontSize: 08),
          ),
        ),
      )
      );
  }
}