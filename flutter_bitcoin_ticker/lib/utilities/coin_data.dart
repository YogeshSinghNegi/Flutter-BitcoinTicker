import 'package:flutterbitcointicker/services/networking.dart';
import 'package:flutterbitcointicker/utilities/constants.dart';

class CoinData {
  CoinData({this.currency});
  final String currency;

  Future<dynamic> getBTCData() async {
    NetworkHelper helper = NetworkHelper(
        url:
            'https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=$apiKey');
    var coinData = await helper.getData();
    return coinData;
  }

  Future<dynamic> getETHData() async {
    NetworkHelper helper = NetworkHelper(
        url:
            'https://rest.coinapi.io/v1/exchangerate/ETH/$currency?apikey=$apiKey');
    var coinData = await helper.getData();
    return coinData;
  }

  Future<dynamic> getLTCData() async {
    NetworkHelper helper = NetworkHelper(
        url:
            'https://rest.coinapi.io/v1/exchangerate/LTC/$currency?apikey=$apiKey');
    var coinData = await helper.getData();
    return coinData;
  }
}
