class FrequentRestaurant {
  final String title;
  final String address;
  final String units;
  final String foodTime;
  final String weight;
  final List<MealPreview> mealPreview;

  FrequentRestaurant(this.title, this.address, this.foodTime, this.units,
      this.weight, this.mealPreview);
}

class SavedRestaurant {
  final String title;
  final String address;
  final String units;
  final String foodTime;
  final String weight;

  SavedRestaurant(
      this.title, this.address, this.foodTime, this.units, this.weight);
}

class MealPreview {
  final String name;
  final String dc;
  final String c;
  final String f;

  MealPreview(this.name, this.dc, this.c, this.f);
}
