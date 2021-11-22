class SliderModel {
  late String imgPath;
  late String title;
  late String description;
  // SliderModel({
  //   this.imgPath,
  //   this.title,
  //   this.description,
  // });

  void setImagePath(String getImagePath) {
    imgPath = getImagePath;
  }

  void setgetTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImagePath() {
    return imgPath;
  }

  String getTitle() {
    return title;
  }

  String getdescription() {
    return description;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel slideModel = SliderModel();

  // Slider 1
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_NewYork.svg");
  slideModel.setgetTitle("New York");
  slideModel.setDescription(
      "The first documented visit into New York Harbor by a European was in 1524 by Giovanni");
  slides.add(slideModel);

  // Slider 2
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_SanFrancisco.svg");
  slideModel.setgetTitle("San Francisco");
  slideModel.setDescription(
      "San Francisco is home to a little bit of everything. Whether you’re a first time visitor or a long-time local");
  slides.add(slideModel);

  // Slider 3
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_Barcelona.svg");
  slideModel.setgetTitle("Barcelona");
  slideModel.setDescription(
      "Founded as a Roman city, in the Middle Ages Barcelona became the capital of the County of Barcelona.");
  slides.add(slideModel);

  // Slider 4
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_Lisbon.svg");
  slideModel.setgetTitle("Lisbon");
  slideModel.setDescription(
      "Lisbon lies in the western Iberian Peninsula on the Atlantic Ocean and the River Tagus.The westernmost portions ...");
  slides.add(slideModel);

  // Slider 5
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_Seattle.svg");
  slideModel.setgetTitle("Seattle");
  slideModel.setDescription(
      "The city is situated on an isthmus between Puget Sound (an inlet of the Pacific Ocean) and Lake Washington");
  slides.add(slideModel);

  // Slider 6
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_Reykjavik.svg");
  slideModel.setgetTitle("Reykjavík");
  slideModel.setDescription(
      "The first permanent settlement in Iceland by Norsemen is believed to have been established at Reykjavík by Ingólfr Arnarson");
  slides.add(slideModel);

  // Slider 7
  slideModel = SliderModel();
  slideModel.setImagePath("assets/images/LIGHT_ILLUSTRATIONS_Paris.svg");
  slideModel.setgetTitle("Paris");
  slideModel.setDescription(
      "Paris received 24.5 million visitors in 2018, measured by hotel stays, with the largest numbers of foreign visitors of USA");
  slides.add(slideModel);
  return slides;
}
