import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String? name;
    String? email;
    String? $id;
    String? $creatdAt;
    String? $updatedAt;

    UserModel({
     this.name,
     this.email,
     this.$id,
     this.$creatdAt,
     this.$updatedAt,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        email: json["email"],
        $id: json["\$id"],
        $creatdAt: json["\$creatdAt"],
        $updatedAt: json["\$updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "\$id": $id,
        "\$creatdAt": $creatdAt,
        "\$updatedAt": $updatedAt,
    };
}