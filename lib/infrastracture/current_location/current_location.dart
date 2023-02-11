import 'package:http/http.dart' as http;
import 'package:whether_now/domain/model/location_model/location_model.dart';
import 'package:whether_now/infrastracture/core/api_end_points.dart';

class CurrentLocation {
  Future<String> fetchIpAdress() async {
    try {
      final response = await http.get(Uri.parse(fetchIpAddressUrl));
      if (response.statusCode == 200) {
        final data = response.body;
        return data;
      } else {
        throw Exception('failed to ip address');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
  Future<LocationModel> fetchLocation() async {
      try {
      final response = await http.get(Uri.parse(fetchLocationUrl));
      if (response.statusCode == 200) {
        final data = response.body;
        return locationModelFromJson(data);
      } else {
        throw Exception('failed to location data');
      }
    } catch (e) {
      throw Exception(e);
    }

  }


}
