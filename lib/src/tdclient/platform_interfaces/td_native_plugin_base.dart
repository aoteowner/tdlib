import 'dart:async';
import 'dart:developer';
import 'dart:ffi' as ffi;
import 'dart:isolate';

import 'package:ffi/ffi.dart';

import 'td_plugin.dart';

typedef Lookup = ffi.Pointer<T> Function<T extends ffi.NativeType>(
    String symbolName);

/// TD Native Library Instance.
abstract class TdNativeBasePlugin extends TdPlugin {
  final Lookup _lookup;

  /// TDLib methods are looked up with [lookup].
  TdNativeBasePlugin.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  /// Creates a new instance of TDLib.
  /// return Pointer to the created instance of TDLib.
  late final _TdJsonClientCreate _tdJsonClientCreate =
      _lookup<ffi.NativeFunction<_TdJsonClientCreatePtr>>(
              'td_json_client_create')
          .asFunction();

  @override
  int tdJsonClientCreate() => _tdJsonClientCreate().address;

  /// Sends request to the TDLib client. May be called from any thread.
  /// [client] The client.
  /// [request] JSON-serialized null-terminated request to TDLib.
  late final _TdJsonClientSend _tdJsonClientSend =
      _lookup<ffi.NativeFunction<_TdJsonClientSendPtr>>('td_json_client_send')
          .asFunction();

  @override
  void tdJsonClientSend(int clientId, String event) {
    final req = event.toNativeUtf8();
    _tdJsonClientSend(
      ffi.Pointer.fromAddress(clientId),
      req,
    );
    malloc.free(req);
  }

  /// Receives incoming updates and request responses from the TDLib client. May be called from any thread, but
  /// must not be called simultaneously from two different threads.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// the same thread, so it can't be used after that.
  ///
  /// [client] The client.
  /// [timeout] The maximum number of seconds allowed for this function to wait for new data.
  ///
  /// return JSON-serialized null-terminated incoming update or request response. May be *null* if the timeout expires.
  late final _TdJsonClientReceive _tdJsonClientReceive =
      _lookup<ffi.NativeFunction<_TdJsonClientReceivePtr>>(
              'td_json_client_receive')
          .asFunction();

  @override
  String? tdJsonClientReceive(int clientId, [double timeout = 8]) {
    final res =
        _tdJsonClientReceive(ffi.Pointer.fromAddress(clientId), timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Synchronously executes TDLib request. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// in the same thread, so it can't be used after that.
  ///
  /// [client] The client. Currently ignored for all requests, so NULL can be passed.
  ///
  /// [request] JSON-serialized null-terminated request to TDLib.
  ///
  /// return JSON-serialized null-terminated request response.
  late final _TdJsonClientExecute _tdJsonClientExecute =
      _lookup<ffi.NativeFunction<_TdJsonClientExecutePtr>>(
              'td_json_client_execute')
          .asFunction();

  @override
  String? tdJsonClientExecute(String event) {
    final req = event.toNativeUtf8();
    final res = _tdJsonClientExecute(ffi.nullptr, req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Destroys the TDLib client instance. After this is called the client instance must not be used anymore.
  ///
  /// [client] The client.
  late final _TdJsonClientDestroy _tdJsonClientDestroy =
      _lookup<ffi.NativeFunction<_TdJsonClientDestroyPtr>>(
              'td_json_client_destroy')
          .asFunction();

  @override
  void tdJsonClientDestroy(int clientId) =>
      _tdJsonClientDestroy(ffi.Pointer.fromAddress(clientId));

  /// Returns an opaque identifier of a new TDLib instance.
  /// The TDLib instance will not send updates until the first request is sent to it.
  late final _TdCreateClientId _tdCreateClientId =
      _lookup<ffi.NativeFunction<_TdCreateClientIdPtr>>('td_create_client_id')
          .asFunction();

  @override
  int tdCreate() => _tdCreateClientId();

  /// Sends request to the TDLib client. May be called from any thread.
  ///
  /// [client_id] TDLib client identifier.
  /// [request] JSON-serialized null-terminated request to TDLib.
  late final _TdSend _tdSend =
      _lookup<ffi.NativeFunction<_TdSendPtr>>('td_send').asFunction();

  @override
  void tdSend(int clientId, String event) {
    final req = event.toNativeUtf8();
    _tdSend(clientId, req);
    malloc.free(req);
  }

  /// Receives incoming updates and request responses. Must not be called simultaneously from two different threads.
  ///
  /// The returned pointer can be used until the next call to [tdReceive] or [tdExecute], after which it will be deallocated by TDLib.
  ///
  /// [timeout] The maximum number of seconds allowed for this function to wait for new data.
  ///
  /// return JSON-serialized null-terminated incoming update or request response. May be *null* if the timeout expires.
  late final _TdReceive _tdReceive =
      _lookup<ffi.NativeFunction<_TdReceivePtr>>('td_receive').asFunction();

  @override
  String? tdReceive([double timeout = 8]) {
    final res = _tdReceive(timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Synchronously executes a TDLib request.
  /// A request can be executed synchronously, only if it is documented with "Can be called synchronously".
  ///
  /// The returned pointer can be used until the next call to [tdReceive] or [tdExecute], after which it will be deallocated by TDLib.
  ///
  /// [request] JSON-serialized null-terminated request to TDLib.
  ///
  /// return JSON-serialized null-terminated request response.
  late final _TdExecute _tdExecute =
      _lookup<ffi.NativeFunction<_TdExecutePtr>>('td_execute').asFunction();

  @override
  String? tdExecute(String event) {
    final req = event.toNativeUtf8();
    final res = _tdExecute(req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Sets the callback that will be called when a message is added to the internal TDLib log.
  /// None of the TDLib methods can be called from the callback.
  /// By default the callback is not set.
  ///
  /// [maxVerbosityLevel] The maximum verbosity level of messages for which the callback will be called.
  ///
  /// [callback] Callback that will be called when a message is added to the internal TDLib log.
  ///
  /// Pass nullptr to remove the callback.
  late final _TdSetLogMessageCallback _tdSetLogMessageCallback =
      _lookup<ffi.NativeFunction<_TdSetLogMessageCallbackPtr>>(
              'td_set_log_message_callback')
          .asFunction();

  @override
  void setLogMessageCallback(
    int maxVerbosityLevel,
    covariant ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback,
  ) {
    _tdSetLogMessageCallback(
      maxVerbosityLevel,
      callback,
    );
  }

  @override
  void removeLogMessageCallback() {
    _tdSetLogMessageCallback(0, ffi.nullptr);
  }

  @override
  num tdGetTimeout() {
    throw UnsupportedError("tdGetTimeout is only supported web platform");
  }

  TdNativeBasePlugin Function() get create;

  @override
  RemoteController toReceiveAsync(void Function(String msg) toReceive) {
    final controller = _IsolateController(_manager, toReceive);
    _manager.add(controller);

    return controller;
  }

  late final _manager = _LocalMain.create(create)..start();
  final _manager2 = <int, _LocalMain>{};

  void _onRemove(int clientId) {
    _manager2.remove(clientId);
  }

  @override
  RemoteController toReceiveJsonAsync(
      int clientId, void Function(String msg) toReceive) {
    final manager = _manager2.putIfAbsent(
      clientId,
      () => _LocalMain.clientId(create, clientId)
        ..onRemove = _onRemove
        ..start(),
    );

    final controller = _IsolateController(manager, toReceive);
    manager.add(controller);

    return controller;
  }
}

class _IsolateController extends RemoteController {
  _IsolateController(this.manager, this.onReceiveFn);
  final _LocalMain manager;
  final OnReceiveFn onReceiveFn;
  @override
  void close() {
    manager.remove(this);
  }
}

mixin _Runner {
  void init();
  String? tdReceive();
  SendPort get sendToLocal;
  SendPort get sendToLocalStatus;

  var status = _RunStatus.idle;
  void start() {
    status = _RunStatus.running;
    sendToLocalStatus.send(_RunStatus.running);
    _scheduleTask();
  }

  void close() {
    status = _RunStatus.closing;
    sendToLocalStatus.send(_RunStatus.closing);
  }

  void onRemoteReceive(dynamic msg) {
    if (msg case _Event m) {
      switch (m) {
        case _Event.start:
          start();
        case _Event.close:
          close();
      }
    }
  }

  Timer? _timer;
  void run() {
    if (checkClosed()) return;

    try {
      final msg = tdReceive();

      if (msg != null) {
        sendToLocal.send(msg);
      }
    } catch (_) {}
    _scheduleTask();
  }

  bool checkClosed() {
    if (status != _RunStatus.running) {
      assert(status == _RunStatus.closing);
      status == _RunStatus.closed;
      sendToLocalStatus.send(_RunStatus.closed);

      _timer?.cancel();
      _timer = null;
      Isolate.exit();
    }

    return false;
  }

  void _scheduleTask() {
    if (checkClosed()) return;

    final timer = _timer;
    if (timer == null || !timer.isActive) {
      _timer = Timer(Duration.zero, run);
    }
  }
}

abstract final class _IsolateMain {
  static void run(_Runner runner) {
    final raw = RawReceivePort();
    raw.handler = runner.onRemoteReceive;
    runner.sendToLocalStatus.send(raw.sendPort);
    runner.init();
    runner.start();
  }
}

final class _LocalMain {
  _LocalMain.clientId(TdNativeBasePlugin Function() createFn, int clientId) {
    raw.handler = onReceive;
    rawStatus.handler = onReceiveStatus;
    runner = _IsolateJsonRunner(
        clientId, createFn, raw.sendPort, rawStatus.sendPort);
  }
  _LocalMain.create(TdNativeBasePlugin Function() createFn) {
    raw.handler = onReceive;
    rawStatus.handler = onReceiveStatus;
    runner = _IsolateRunner(createFn, raw.sendPort, rawStatus.sendPort);
  }

  late final _Runner runner;

  final rawStatus = RawReceivePort();
  var _status = _RunStatus.idle;

  /// _Event
  SendPort? _sendToRemoteEvent;

  void onReceiveStatus(dynamic status) {
    assert(status is _RunStatus || status is SendPort);
    if (status is SendPort) {
      _sendToRemoteEvent = status;
      checkClosed();
      return;
    }

    if (status is _RunStatus) {
      _status = status;
      switch (status) {
        case _RunStatus.closed:
          _isolate = null;
          checkStart();
        case _RunStatus.idle:
        case _RunStatus.running:
        case _RunStatus.closing:
      }
      log('isolate status: $_status');
    }
  }

  final raw = RawReceivePort();
  void Function(int clientId)? onRemove;

  void onReceive(dynamic msg) {
    if (msg is String) {
      for (var v in list) {
        v.onReceiveFn(msg);
      }
    }
  }

  final list = <_IsolateController>[];
  void add(_IsolateController n) {
    assert(!list.contains(n));

    list.add(n);
    checkStart();
  }

  void remove(_IsolateController n) {
    if (!list.contains(n)) return;

    list.remove(n);
    checkClosed();
  }

  void checkClosed() {
    if (runner case _IsolateJsonRunner(clientId: var clientId)
        when list.isEmpty) {
      _sendToRemoteEvent?.send(_Event.close);
      onRemove?.call(clientId);
    } else if (list.isEmpty) {
      _sendToRemoteEvent?.send(_Event.close);
    }
  }

  void checkStart() {
    if (list.isNotEmpty) {
      start();
    }
  }

  Isolate? _isolate;
  Future? _future;

  void start() async {
    if (_future != null) return;
    if (_isolate != null) return;

    final future = _future ??= Isolate.spawn(_IsolateMain.run, runner)
      ..whenComplete(() => _future = null);
    _isolate = await future;
  }
}

enum _RunStatus {
  /// 未初始化
  idle,

  /// 正在运行
  running,

  /// 关闭中
  closing,

  /// 完全关闭
  closed,
}

enum _Event {
  start,
  close,
}

class _IsolateRunner with _Runner {
  _IsolateRunner(this.createFn, this.sendToLocal, this.sendToLocalStatus);
  final TdNativeBasePlugin Function() createFn;
  @override
  final SendPort sendToLocal;
  @override
  final SendPort sendToLocalStatus;

  TdNativeBasePlugin? td;
  @override
  void init() {
    assert(td == null);
    td = createFn();
  }

  @override
  String? tdReceive() {
    return td?.tdReceive(300);
  }
}

class _IsolateJsonRunner with _Runner {
  _IsolateJsonRunner(
      this.clientId, this.createFn, this.sendToLocal, this.sendToLocalStatus);
  final TdNativeBasePlugin Function() createFn;
  final int clientId;
  @override
  final SendPort sendToLocal;
  @override
  final SendPort sendToLocalStatus;

  TdNativeBasePlugin? td;
  @override
  void init() {
    td = createFn();
  }

  @override
  String? tdReceive() {
    return td?.tdJsonClientReceive(clientId, 300);
  }
}

/// A type of callback function that will be called when a message is added to the internal TDLib log.
///
///  [verbosityLevel] Log verbosity level with which the message was added (-1 - 1024).
/// If 0, then TDLib will crash as soon as the callback returns.
/// None of the TDLib methods can be called from the callback.
/// [message] Null-terminated string with the logged message.
typedef TdLogMessageCallbackPtr = ffi.Void Function(
    ffi.Int32 verbosityLevel, ffi.Pointer<Utf8> message);

typedef _TdJsonClientCreatePtr = ffi.Pointer<ffi.Void> Function();
typedef _TdJsonClientSendPtr = ffi.Void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceivePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Double timeout);
typedef _TdJsonClientExecutePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroyPtr = ffi.Void Function(ffi.Pointer client);
typedef _TdCreateClientIdPtr = ffi.Int32 Function();
typedef _TdSendPtr = ffi.Void Function(
    ffi.Int32 clientId, ffi.Pointer<Utf8> request);
typedef _TdReceivePtr = ffi.Pointer<Utf8> Function(ffi.Double timeout);
typedef _TdExecutePtr = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
typedef _TdSetLogMessageCallbackPtr = ffi.Void Function(
    ffi.Int32 maxVerbosityLevel,
    ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback);

typedef _TdJsonClientCreate = ffi.Pointer Function();
typedef _TdJsonClientSend = void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceive = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, double timeout);
typedef _TdJsonClientExecute = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroy = void Function(ffi.Pointer client);
typedef _TdCreateClientId = int Function();
typedef _TdSend = void Function(int clientId, ffi.Pointer<Utf8> request);
typedef _TdReceive = ffi.Pointer<Utf8> Function(double timeout);
typedef _TdExecute = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
typedef _TdSetLogMessageCallback = void Function(int maxVerbosityLevel,
    ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback);
