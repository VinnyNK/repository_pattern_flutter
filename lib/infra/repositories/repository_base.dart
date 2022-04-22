import 'package:http/http.dart' as http;
import 'package:poc_repository_flutter/secrets/application_secrets.dart';

abstract class RepositoryBase {

  final http.Client client;

  RepositoryBase({ required this.client });
}