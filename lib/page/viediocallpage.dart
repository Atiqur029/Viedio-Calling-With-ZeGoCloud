import 'package:flutter/material.dart';
import 'package:voiceandbiediocall/util/setting.dart';
import 'dart:math' as math;
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
 final String localid=math.Random().nextInt(10000).toString();
class ViedioCallpage extends StatelessWidget {
  final String  userid;
  const ViedioCallpage({super.key, required this.userid});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
      appID: int.parse(appid), // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: appsign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: localid,
      userName: 'user_name $localid',
      callID: userid,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall() 
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    )
    );
  }
}