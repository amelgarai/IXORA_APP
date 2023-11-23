import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
// MyState(this.widget);
final titles = [ "تصميم واجهة تفاصيل المهمة لسطح المكتب", 
"test", 
"ننني", 
"تحسين تصميم التطبيق", 
"تحسين التطبيق"];
final subtitles = [
"ixora PMP",
"اختبار اشعارات",
"اختبار اشعارات",
"ixora PMP",
"ixora PMP"
];
final icons = [Icons.task, Icons.task_alt_outlined, Icons.task_alt_rounded,Icons.add_task,Icons.task_outlined];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks Overview'),
      ),
      body: SingleChildScrollView(

child: Column(
children: [
Text("IxoraPMP", style: 
TextStyle(color: Colors.cyan[700], fontSize: 30,fontWeight: FontWeight.w600),
),
/*PieChart(PieChartData(
            centerSpaceRadius: 5,
            borderData: FlBorderData(show: false),
            sectionsSpace: 2,
            sections: [
              PieChartSectionData(value: 35, color: Colors.purple, radius: 100),
              PieChartSectionData(value: 40, color: Colors.amber, radius: 100),
              PieChartSectionData(value: 55, color: Colors.green, radius: 100),
              PieChartSectionData(value: 70, color: Colors.orange, radius: 100),
            ])),*/
ListView.builder(
scrollDirection: Axis.vertical,
shrinkWrap: true,
itemCount: titles.length,
itemBuilder: (context, index) {
return Card(
child: ListTile(
title: Text(titles[index]),
subtitle: Text(subtitles[index]),
leading: CircleAvatar(
backgroundColor: Colors.cyan[100]
),
trailing: Icon(icons[index])));
})
],
),
      ));
    }
}





















