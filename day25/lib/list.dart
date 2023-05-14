class ElementInfo {
  String logo;
  String name;
  String price;
  bool isChoice;

  ElementInfo(this.logo, this.name, this.price, this.isChoice);
  static List<ElementInfo> generatedElementInfoList() {
    return [
      ElementInfo("images/b.png", "Bike", "\$150000", false),
      ElementInfo("images/dr.png", "Dress", "\$150000", false),
      ElementInfo("images/f.png", "Food", "\$150000", false),
      ElementInfo("images/j.png", "Jewelerry", "\$150000", false),
      ElementInfo("images/b.png", "Bike", "\$150000", false),
      ElementInfo("images/dr.png", "Dress", "\$150000", false),
      ElementInfo("images/f.png", "Food", "\$150000", false),
      ElementInfo("images/j.png", "Jewelerry", "\$150000", false),
    ];
  }
}
