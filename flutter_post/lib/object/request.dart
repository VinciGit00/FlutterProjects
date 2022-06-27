class RequestToSend {
  late String link;
  late String operation;
  late String headerName;
  late String header;
  late String body;

  RequestToSend(
      this.link, this.operation, this.headerName, this.header, this.body);

  RequestToSend.secondConstructor() {
    this.link = "";
    this.operation = "";
    this.headerName = "";
    this.header = "";
    this.body = "";
  }

  void addLink(String link) {
    this.link = link;
  }

  void addOperation(String operation) {
    this.operation = operation;
  }

  void addHeaderName(String headerName) {
    this.headerName = headerName;
  }

  void addHeader(String header) {
    this.header = header;
  }

  void addbody(String body) {
    this.body = body;
  }
}
