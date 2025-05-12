import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'onboarding01_model.dart';
export 'onboarding01_model.dart';

class Onboarding01Widget extends StatefulWidget {
  const Onboarding01Widget({super.key});

  @override
  State<Onboarding01Widget> createState() => _Onboarding01WidgetState();
}

class _Onboarding01WidgetState extends State<Onboarding01Widget> {
  late Onboarding01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding01Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowTimer(
              initialTime: _model.timerMilliseconds,
              getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                value,
                hours: false,
                milliSecond: false,
              ),
              controller: _model.timerController,
              updateStateInterval: const Duration(milliseconds: 1000),
              onChanged: (value, displayTime, shouldUpdate) {
                _model.timerMilliseconds = value;
                _model.timerValue = displayTime;
                if (shouldUpdate) setState(() {});
              },
              onEnded: () async {
                if (loggedIn) {
                  context.pushNamed('Home');
                } else {
                  context.pushNamed('Login');
                }
              },
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    fontSize: 1.0,
                    letterSpacing: 0.0,
                  ),
            ),
            const Expanded(
              child: FlutterFlowVideoPlayer(
                path: 'assets/videos/lv_0_20240413160820.mp4',
                videoType: VideoType.asset,
                width: 1000.0,
                height: 1425.0,
                autoPlay: true,
                looping: true,
                showControls: false,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
