class weather {
  var cityName;
  var icon;
  var condition;
  var wind;
  var temp;
  var humidity;
  var wind_dir;
  var gust;
  var uv;
  var pressure;
  var pricipe;
  var last_update;
  weather(
      {required this.cityName,
      required this.icon,
      required this.wind,
      required this.temp,
      required this.humidity,
      required this.wind_dir,
      required this.gust,
      required this.uv,
      required this.pressure,
      required this.pricipe,
      required this.last_update});
  weather.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    icon = json['current']['contdition']['icon'];
    condition = json['current'][condition]['text'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_dir'];
    humidity = json['current']['humidty'];
    wind_dir = json['current']['wind_dir'];
    pressure = json['current']['prussere_mb'];
    pricipe = json['current']['precip'];
    last_update = json['current']['last_update'];
    gust = json['current']['gust']["uv"];
  }
}
