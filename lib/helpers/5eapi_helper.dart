import 'dart:convert';
import 'package:http/http.dart' as http;

class DndApiHelper {
  Future<dynamic> get characterSkills async {
    const url = "http://dnd5eapi.co/api/skills/";
    final response = await http.get(url);
    final Map<String, dynamic> responseData = json.decode(response.body);
    final List<dynamic> results = responseData["results"];
    final urls = results.map((result) => result["url"]);
    List<http.Response> responses =
        await Future.wait(urls.map((url) => http.get(url)));
    var map = Map.fromIterable(responses, key: (response) {
      return json.decode(response.body)["name"];
    }, value: (response) {
      return {
        "desc": json.decode(response.body)["desc"][0],
        "abilityScore": json.decode(response.body)["ability_score"]["name"]
      };
    });
    print(map);
    return map;
  }

  Future<Map<String, dynamic>> calcSkillsByClassBkd(
      String chClass, String bkd) async {
    final url = "http://dnd5eapi.co/api/classes/${chClass.toLowerCase()}";
    final classResponse = await http.get(url);
    final list =
        json.decode(classResponse.body)["proficiency_choices"] as List<dynamic>;
    final classSkills = (list[0]["from"])
        .map((value) => value["name"].replaceRange(0, 6, ""))
        .toList();
    return {"skills": classSkills, "choose": list[0]["choose"]};
  }
}
