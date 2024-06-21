import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

const appId = "77e0ebd5e4ae46218e41879765f1a83b";
const token = "007eJxTYFi/1lLCvn6xepzT54DWG9dvJ96dfC5oMdtccwvZF6m+1w0VGMzNUw1Sk1JMU00SU03MjAwtUk0MLcwtzc1M0wwTLYyT9N+UpDUEMjJcq9nPwAiFID4LQ1VmYgoDAwBTix/H";
const channel = "ziad";

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  int? _remoteUid;
  bool _localUserJoined = false;
  late RtcEngine _engine;
  bool _isMicMuted = false;
  bool _isCameraOff = false;
  bool _isToolbarVisible = true;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    // retrieve permissions
    await [Permission.microphone, Permission.camera].request();

    //create the engine
    _engine = createAgoraRtcEngine();
    await _engine.initialize(const RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          debugPrint("local user ${connection.localUid} joined");
          setState(() {
            _localUserJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("remote user $remoteUid joined");
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          debugPrint("remote user $remoteUid left channel");
          setState(() {
            _remoteUid = null;
          });
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          debugPrint(
              '[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
        },
      ),
    );

    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.enableLocalAudio(!_isMicMuted);
    await _engine.enableLocalVideo(!_isCameraOff);

    await _engine.joinChannel(
      token: token,
      channelId: channel,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _dispose();
  }

  Future<void> _dispose() async {
    await _engine.leaveChannel();
    await _engine.release();
  }

  void _onToggleMute() {
    setState(() {
      _isMicMuted = !_isMicMuted;
    });
    _engine.enableLocalAudio(!_isMicMuted);
  }

  void _onToggleCamera() {
    setState(() {
      _isCameraOff = !_isCameraOff;
    });
    _engine.enableLocalVideo(!_isCameraOff);
  }

  void _onSwitchCamera() {
    _engine.switchCamera();
  }

  void _onEndCall(BuildContext context) {
    _dispose();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isToolbarVisible = !_isToolbarVisible;
          });
        },
        child: Stack(
          children: [
            Center(
              child: _remoteVideo(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 100,
                height: 150,
                child: Center(
                  child: _localUserJoined
                      ? AgoraVideoView(
                    controller: VideoViewController(
                      rtcEngine: _engine,
                      canvas: const VideoCanvas(uid: 0),
                    ),
                  )
                      : const CircularProgressIndicator(),
                ),
              ),
            ),
            Visibility(
              visible: _isToolbarVisible,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _toolbar(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _toolbar() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: _onToggleMute,
            child: Icon(
              _isMicMuted ? Icons.mic_off : Icons.mic,
              color: _isMicMuted ? Colors.red : Colors.blueAccent,
              size: 20.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () => _onEndCall(context),
            child: const Icon(
              Icons.call_end,
              color: Colors.red,
              size: 35.0,
            ),
          ),
          RawMaterialButton(
            onPressed: _onSwitchCamera,
            child: Icon(
              Icons.switch_camera,
              color: _isCameraOff ? Colors.red : Colors.blueAccent,
              size: 20.0,
            ),
          ),
          RawMaterialButton(
            onPressed: _onToggleCamera,
            child: Icon(
              _isCameraOff ? Icons.videocam_off : Icons.videocam,
              color: _isCameraOff ? Colors.red : Colors.blueAccent,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: _engine,
          canvas: VideoCanvas(uid: _remoteUid),
          connection: const RtcConnection(channelId: channel),
        ),
      );
    } else {
      return const Text(
        'Please wait for doctor to join',
        textAlign: TextAlign.center,
      );
    }
  }
}