import 'package:flutter/material.dart';

class InfoQuran extends StatelessWidget {
  const InfoQuran(
      {Key? key,
      required this.num,
      required this.laters,
      required this.wordes,
      required this.type});
  final String num;
  final String laters;
  final String wordes;
  final String type;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: DataTable(
                  columns: const [
                    DataColumn(
                      label: Text(
                        'الايات',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'الاحرف',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "الكلمات",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "النوع",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Center(child: Text(num))),
                      DataCell(Center(child: Text(laters))),
                      DataCell(Center(child: Text(wordes))),
                      DataCell(Center(child: Text(type))),
                    ]),
                  ],
                ),
              );
            },
          );
        },
        icon: const Icon(
          Icons.info_outline,
          size: 25,
          color: Colors.white,
        ));
  }
}
