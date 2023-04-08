class DataModel {
  late List<Users> users;
  late List<Products> products;
  late List<Orders> orders;
  late List<PromoCodes> promoCodes;

  DataModel(
      {required this.users,
      required this.products,
      required this.orders,
      required this.promoCodes});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = [];
      json['users'].forEach((v) {
        users.add(new Users.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders.add(new Orders.fromJson(v));
      });
    }
    if (json['promoCodes'] != null) {
      promoCodes = [];
      json['promoCodes'].forEach((v) {
        promoCodes.add(new PromoCodes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.users != null) {
      data['users'] = this.users.map((v) => v.toJson()).toList();
    }
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    if (this.orders != null) {
      data['orders'] = this.orders.map((v) => v.toJson()).toList();
    }
    if (this.promoCodes != null) {
      data['promoCodes'] = this.promoCodes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  late String name;
  late String email;
  late List<Cart> cart;
  late Address address;
  late String city;
  late String state;
  late String zip;
  late String phone;

  Users(
      {required this.name,
      required this.email,
      required this.cart,
      required this.address,
      required this.city,
      required this.state,
      required this.zip,
      required this.phone});

  Users.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    if (json['cart'] != null) {
      cart = [];
      json['cart'].forEach((v) {
        cart.add(new Cart.fromJson(v));
      });
    }
    address =
        (json['address'] != null ? Address.fromJson(json['address']) : null)!;
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    if (this.cart != null) {
      data['cart'] = this.cart.map((v) => v.toJson()).toList();
    }
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    data['city'] = this.city;
    data['state'] = this.state;
    data['zip'] = this.zip;
    data['phone'] = this.phone;
    return data;
  }
}

class Cart {
  late int productId;
  late String name;
  late double price;
  late int quantity;
  late String imageUrl;

  Cart(
      {required this.productId,
      required this.name,
      required this.price,
      required this.quantity,
      required this.imageUrl});

  Cart.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['image_url'] = this.imageUrl;
    return data;
  }
}

class Address {
  late String streetAddress;
  late String aptNumber;
  late String city;
  late String state;
  late String zipCode;
  late String country;

  Address(
      {required this.streetAddress,
      required this.aptNumber,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.country});

  Address.fromJson(Map<String, dynamic> json) {
    streetAddress = json['street_address'];
    aptNumber = json['apt_number'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zip_code'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street_address'] = this.streetAddress;
    data['apt_number'] = this.aptNumber;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zip_code'] = this.zipCode;
    data['country'] = this.country;
    return data;
  }
}

class Products {
  late int productId;
  late String name;
  late String description;
  late double price;
  late String imageUrl;

  Products(
      {required this.productId,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['image_url'] = this.imageUrl;
    return data;
  }
}

class Orders {
  late String userId;
  late Products products;
  late String status;
  late int timestamp;

  Orders(
      {required this.userId,
      required this.products,
      required this.status,
      required this.timestamp});

  Orders.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    products = (json['products'] != null
        ? Products.fromJson(json['products'])
        : null)!;
    status = json['status'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    if (this.products != null) {
      data['products'] = this.products.toJson();
    }
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class PromoCodes {
  late String code;
  late double discount;
  late String startDate;
  late String endDate;
  late bool isActive;

  PromoCodes(
      {required this.code,
      required this.discount,
      required this.startDate,
      required this.endDate,
      required this.isActive});

  PromoCodes.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    discount = json['discount'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['discount'] = this.discount;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['isActive'] = this.isActive;
    return data;
  }
}
