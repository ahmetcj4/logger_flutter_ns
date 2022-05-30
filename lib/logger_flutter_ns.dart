library logger_flutter_ns;

import 'dart:collection';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:logger_flutter_ns/src/shake_detector.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'src/ansi_parser.dart';

part 'src/log_console.dart';
part 'src/log_console_on_shake.dart';
