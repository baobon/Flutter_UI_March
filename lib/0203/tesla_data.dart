class TestLas {
  String modelname;
  int battery;
  int kilometter;
  int range;
  int temperature;
  int fanspeed;
  int cooling;
  TestLas(
      {this.modelname,
      this.kilometter,
      this.battery,
      this.range,
      this.temperature,
      this.fanspeed,
      this.cooling});
}

// TestLas testLas = TestLas("Cybertruck", 54, 297,27,3,24,);
TestLas testLas = TestLas(
  modelname: "Model X",
  kilometter: 297,
  battery: 54,
  range: 297,
  temperature: 27,
  fanspeed: 3,
  cooling: 24,
);

class ListTesla {
  String name;
  String mode;

  ListTesla({this.name, this.mode});
}

List<ListTesla> listTeslas = [
  ListTesla(
    name: "Engine",
    mode: "Sleeping mode",
  ),
  ListTesla(
    name: "Climate",
    mode: "A/C is ON",
  ),
  ListTesla(
    name: "Tires",
    mode: "Low power",
  ),
  ListTesla(
    name: "Fan",
    mode: "Saved mode",
  )
];
