class CatalogModel {
  static final items = [
    Item(
        1,
        "Sumit Pandey",
        "Android Developer",
        "https://media-exp1.licdn.com/dms/image/C5603AQHw4o8wRSAQsQ/profile-displayphoto-shrink_200_200/0/1638617456666?e=2147483647&v=beta&t=hclciZ9f1nP_PFM2e5V-EZgMQL56HNHc8ube6b91r9g",
        "#000000",
        123),
    Item(
        1,
        "Sumit Pandey",
        "Android Developer",
        "https://media-exp1.licdn.com/dms/image/C5603AQHw4o8wRSAQsQ/profile-displayphoto-shrink_200_200/0/1638617456666?e=2147483647&v=beta&t=hclciZ9f1nP_PFM2e5V-EZgMQL56HNHc8ube6b91r9g",
        "#000000",
        123),
    Item(
        1,
        "Sumit Pandey",
        "Android Developer",
        "https://media-exp1.licdn.com/dms/image/C5603AQHw4o8wRSAQsQ/profile-displayphoto-shrink_200_200/0/1638617456666?e=2147483647&v=beta&t=hclciZ9f1nP_PFM2e5V-EZgMQL56HNHc8ube6b91r9g",
        "#000000",
        123),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String imageurl;
  final String color;
  final num price;

  Item(this.id, this.name, this.desc, this.imageurl, this.color, this.price);
}
