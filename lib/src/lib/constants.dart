class Constants {
  static const String VSN = '1.0.0';
  static const Duration DEFAULT_TIMEOUT = Duration(milliseconds: 10000);
  static const int WS_CLOSE_NORMAL = 1000;
}

enum SocketStates { connecting, open, closing, closed, disconnected }

enum ChannelStates { closed, errored, joined, joining, leaving }

enum ChannelEvents { close, error, join, reply, leave, heartbeat }

extension SocketStatesName on SocketStates {
  String name() {
    return toString().split('.').last;
  }
}

extension ChannelEventsName on ChannelEvents {
  String eventName() {
    return 'phx_${toString().split('.').last}';
  }
}

class Transports {
  static const String websocket = 'websocket';
}
