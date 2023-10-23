import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
    UserInfo({
        required this.userId,
        required this.email,
        required this.firstname,
        required this.lastname,
        required this.profilepic,
        required this.cart,
        required this.contact,
        required this.bannerImage,
        required this.createdAt,
        required this.isVerified,
        required this.fcmToken,
    });

    final String? userId;
    final String? email;
    final String? firstname;
    final String? lastname;
    final String? profilepic;
    final List<dynamic> cart;
    final String? contact;
    final String? bannerImage;
    final String? createdAt;
    final String? isVerified;
    final String? fcmToken;

    UserInfo copyWith({
        String? userId,
        String? email,
        String? firstname,
        String? lastname,
        String? profilepic,
        List<dynamic>? cart,
        String? contact,
        String? bannerImage,
        String? createdAt,
        String? isVerified,
        String? fcmToken,
    }) {
        return UserInfo(
            userId: userId ?? this.userId,
            email: email ?? this.email,
            firstname: firstname ?? this.firstname,
            lastname: lastname ?? this.lastname,
            profilepic: profilepic ?? this.profilepic,
            cart: cart ?? this.cart,
            contact: contact ?? this.contact,
            bannerImage: bannerImage ?? this.bannerImage,
            createdAt: createdAt ?? this.createdAt,
            isVerified: isVerified ?? this.isVerified,
            fcmToken: fcmToken ?? this.fcmToken,
        );
    }

    factory UserInfo.fromJson(Map<String, dynamic> json){ 
        return UserInfo(
            userId: json["userId"],
            email: json["email"],
            firstname: json["firstname"],
            lastname: json["lastname"],
            profilepic: json["profilepic"],
            cart: json["cart"] == null ? [] : List<dynamic>.from(json["cart"]!.map((x) => x)),
            contact: json["contact"],
            bannerImage: json["bannerImage"],
            createdAt: json["createdAt"],
            isVerified: json["isVerified"],
            fcmToken: json["fcmToken"],
        );
    }

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "email": email,
        "firstname": firstname,
        "lastname": lastname,
        "profilepic": profilepic,
        "cart": cart.map((x) => x).toList(),
        "contact": contact,
        "bannerImage": bannerImage,
        "createdAt": createdAt,
        "isVerified": isVerified,
        "fcmToken": fcmToken,
    };

    @override
    List<Object?> get props => [
    userId, email, firstname, lastname, profilepic, cart, contact, bannerImage, createdAt, isVerified, fcmToken, ];
}
