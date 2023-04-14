import 'package:flutter/material.dart';
import 'package:info_dom/style/style.dart';

class ListGroceriesPage extends StatelessWidget {
  const ListGroceriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des courses'),
      ),
      body: SingleChildScrollView(
        padding: padding,
        child: Center(
          child: Card(
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Nom')),
                DataColumn(label: Text('Quantité')),
                DataColumn(
                  label: Text('Prix'),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Tomates')),
                  DataCell(Text('2')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pommes')),
                  DataCell(Text('3')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Poires')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pêches')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fraises')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bananes')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pommes')),
                  DataCell(Text('3')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Poires')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pêches')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fraises')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bananes')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pommes')),
                  DataCell(Text('3')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Poires')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pêches')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fraises')),
                  DataCell(Text('1')),
                  DataCell(Text('1.50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bananes')),
                  DataCell(Text('2')),
                  DataCell(Text('2.50')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
