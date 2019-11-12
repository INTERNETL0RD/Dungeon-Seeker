import 'package:flutter/material.dart';
import '../helpers/5eapi_helper.dart';
//TODO: Add background conditional to add more skills
class SkillsSelector extends StatelessWidget {
  final String selectedClass;
  final List<String> skillsValues;
  final Function editValues;
  SkillsSelector(this.selectedClass, this.skillsValues, this.editValues);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: FutureBuilder(
        future: DndApiHelper().calcSkillsByClassBkd(selectedClass, ""),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          else {
            if (skillsValues.length != snapshot.data["choose"])
              skillsValues.add("");
            return GridView.builder(
              primary: false,
              itemCount: snapshot.data["choose"],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4/1,
                  crossAxisCount: 2, crossAxisSpacing: 10),
              itemBuilder: (ctx, i) {
                return DropdownButton<String>(
                  onChanged: (value) => editValues(value, i),
                  underline: Container(height: 2, color: Theme.of(context).accentColor,),
                  isExpanded: true,
                  value: skillsValues[i] == "" ? null : skillsValues[i],
                  hint: Text("Select a skill"),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Theme.of(context).accentColor,
                  ),
                  items: snapshot.data["skills"]
                      .map<DropdownMenuItem<String>>((value) {
                    print(value);
                    return DropdownMenuItem<String>(
                      value: value as String,
                      child: Text(value as String,
                          style: TextStyle(
                              color: Theme.of(context).textTheme.body2.color)),
                    );
                  }).toList(),
                );
              },
            );
          }
        },
      ),
    );
  }
}
