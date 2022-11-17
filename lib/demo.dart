import 'package:bmi_calculator/myclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  TextEditingController h = TextEditingController();
  TextEditingController w = TextEditingController();
  String radio = "";

  @override
  Widget build(BuildContext context) {
    myclass m=Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Units:"),
              Radio(
                  onChanged: (value) {
                    radio = value.toString();
                    setState(() {});
                  },
                  value: "Metric",
                  groupValue: radio),
              Text("Metric"),
              Radio(
                  onChanged: (value) {
                    radio = value.toString();
                    setState(() {});
                  },
                  value: "Imperial ",
                  groupValue: radio),
              Text("Imperial "),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: h,
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Weight:"),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: w,
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "height:"),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () {

            m.change(h.text, w.text);

          }, child: Text("Calculator")),

          Text("${m.bmi}"),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text("Metric BMI Formula"),
            ],
          ),
        ],
      ),
    );
  }
}*/
class demo extends StatelessWidget {
  TextEditingController t = TextEditingController();
  TextEditingController t1 = TextEditingController();
  //String radio = "";
  List l=["Metric","Imperial"];

  @override
  Widget build(BuildContext context) {
    myclass m = Provider.of(context);

    var get;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Text("Units:"),
              Radio(
                value: "Metric ",
                groupValue: m.get,
                onChanged: (value) {

                },
              ),
              Text("Metric  "),
              Radio(
                value: "Imperial",
                groupValue: m.get,
                onChanged: (value) {},
              ),
              Text("Imperial "),
            ],
          ),
          Text("Units:"),
          /*PopupMenuButton(itemBuilder: (context) {
            return [PopupMenuItem(child: Text("Metric")),
              PopupMenuItem(child: Text("Imperial"))
            ];
          },),*/

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Weight:"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "height:"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  m.change(t.text, t1.text);
                },
                child: Text("Calculator")),
          ),
          Text("${m.bmi}"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Metric BMI Formula"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
