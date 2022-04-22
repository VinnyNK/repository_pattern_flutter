class Token {
  String accessToken, refreshToken;
  DateTime criadoEm, expiraEm;

  Token({ required this.accessToken, required this.refreshToken, required this.criadoEm, required this.expiraEm });
}