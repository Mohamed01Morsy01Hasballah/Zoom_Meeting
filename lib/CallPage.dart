import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zoom_metting/constant.dart';
import 'package:zoom_metting/main.dart';

class CallPage extends StatelessWidget {
  final String callid;
  CallPage({required this.callid});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    ZegoUIKitPrebuiltCall(
        appID:constant.byid,
        appSign: constant.bySiginIn,
        callID: callid,
        userID: localuserid,
        userName: "user_$localuserid",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom=(context){
          Navigator.of(context).pop();
        }
    ));
  }
}
