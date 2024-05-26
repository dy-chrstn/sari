class AccountModel {
  Messages? messages;
  Response? response;

  AccountModel({this.messages, this.response});

  AccountModel.fromJson(Map<String, dynamic> json) {
    messages = json['messages'] != null
        ? Messages.fromJson(json['messages'])
        : null;
    response = json['response'] != null
        ? Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (messages != null) {
      data['messages'] = messages!.toJson();
    }
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class Messages {
  int? code;
  String? message;

  Messages({this.code, this.message});

  Messages.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}

class Response {
  String? userId;
  String? username;
  String? email;

  Response({this.userId, this.username, this.email});

  Response.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}