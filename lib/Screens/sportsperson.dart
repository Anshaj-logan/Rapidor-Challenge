import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SportspersonTimingsReport extends StatelessWidget {
  final DateFormat _dateFormat = DateFormat('dd/MMM/yyyy');
  final List<String> _weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<String> _infoweek = ['Running Time', 'Jogging Time', 'Exercise Time', 'Total Time (Running+Jogging+Exercise)', 'Running Time engagement % (Running / Total Time)', 'Jogging Time engagement % (Jogging / Total Time)', 'Exercise Time engagement % (Exercise / Total Time)'];
  


  String _getFormattedDate(int dayOffset) {
    final DateTime date = DateTime.now().subtract(Duration(days: 6 - dayOffset));
    return _dateFormat.format(date);
  }

  String _generateRandomTime() {
    final Random random = Random();
    final int hour = random.nextInt(12) + 1;
    final int minute = random.nextInt(60);
    return '$hour:$minute';
  }

  List<DataColumn> _buildColumns() {
    return _weekDays
        .map((day) => DataColumn(
              label: Text(day),
            ))
        .toList();
  }

List<DataRow> _buildRows() {
  List<DataRow> rows = [];
  List<List<String>> rowData = [];

  for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[0].toString())));
    cellData.add('Running Time');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
    for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[1].toString())));
    cellData.add('Jogging Time');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);

    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
      for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[2].toString())));
    cellData.add('Exercise Time');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
        for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[3].toString())));
    cellData.add('Total Time (Running+Jogging+Exercise)');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
          for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[4].toString())));
    cellData.add('Running Time engagement % (Running / Total Time)');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
            for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[5].toString())));
    cellData.add('Jogging Time engagement % (Jogging / Total Time)');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }
              for (int i = 0; i < 1; i++) {
    List<DataCell> cells = [];
    List<String> cellData = [];

    cells.add(DataCell(Text(_infoweek[6].toString())));
    cellData.add('Exercise Time engagement % (Exercise / Total Time');

    for (int j = 0; j < 7; j++) {
      String time = _generateRandomTime();
      cells.add(DataCell(Text(time)));
      cellData.add(time);
    }

    rows.add(DataRow(cells: cells));
    rowData.add(cellData);
    print(rowData);
  }

  // Store rowData for further use

  return rows;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Center(child: Text('Sportsperson Timings Report')),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? Center(
                  child: Text('Please switch to landscape mode'),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columnSpacing: 40.0,
                    horizontalMargin: 5.0,
                    columns: [
                      DataColumn(label: Text('Total Info for the WEEK')),
                      ..._buildColumns(),
                    ],
                    rows: _buildRows(),
                  ),
                );
        },
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(home: SportspersonTimingsReport()));
// }
