import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/core/constant/defoalte.dart';

class DropDownCity extends StatefulWidget {
  const DropDownCity({Key? key}) : super(key: key);

  @override
  State<DropDownCity> createState() => _DropDownCityState();
}

class _DropDownCityState extends State<DropDownCity> {
  String newValue = 'القاهرة';

  final List<String> cities = [
    'القاهرة',
    'الأسكندرية',
    'شبرا الخيمة',
    'الفيوم',
    'طنطا',
    'المنصورة',
    'أسيوط',
    'الزقازيق',
    'بنها',
    'بورسعيد',
    'السويس',
    'دمياط',
    'كفر الشيخ',
    'المحلة الكبرى',
    'المنيا',
    'سوهاج',
    'الإسماعيلية',
    'أسوان'
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: s1color,
        ),
        items: cities.map((String city) {
          return DropdownMenuItem<String>(
            value: city,
            child: Text(
              city,
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              dropdownValue = newValue;
              savecity();
            });
          }
        },
      ),
    );
  }
}
