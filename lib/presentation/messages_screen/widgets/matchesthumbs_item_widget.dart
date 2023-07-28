import '../models/matchesthumbs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class MatchesthumbsItemWidget extends StatelessWidget {
  MatchesthumbsItemWidget(
    this.matchesthumbsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MatchesthumbsItemModel matchesthumbsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: otpController,
      length: 5,
      obscureText: false,
      obscuringCharacter: '*',
      keyboardType: TextInputType.number,
      autoDismissKeyboard: true,
      enableActiveFill: true,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: (value) {
        otpController?.text = value;
      },
      pinTheme: PinTheme(
        fieldHeight: getHorizontalSize(
          60,
        ),
        fieldWidth: getHorizontalSize(
          60,
        ),
        shape: PinCodeFieldShape.circle,
        selectedFillColor: appTheme.deepPurple600,
        activeFillColor: appTheme.deepPurple600,
        inactiveFillColor: appTheme.deepPurple600,
        inactiveColor: appTheme.whiteA700,
        selectedColor: appTheme.whiteA700,
        activeColor: appTheme.whiteA700,
      ),
    );
  }
}
