class RequestToSend {
  String operation;
  String params;
  String authorization;
  String header;
  String body;

  RequestToSend(
      this.operation, this.params, this.authorization, this.header, this.body);
}
