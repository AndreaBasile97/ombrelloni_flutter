import 'package:flutter/material.dart';

class Prenotazioni extends StatefulWidget {
  const Prenotazioni({Key? key}) : super(key: key);

  @override
  _PrenotazioniState createState() => _PrenotazioniState();
}

class _PrenotazioniState extends State<Prenotazioni> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        header: const Text('Prenotazioni'),
        rowsPerPage: _rowsPerPage,
        availableRowsPerPage: const <int>[5, 10, 20],
        onRowsPerPageChanged: (int? value) {
          if (value != null) {
            setState(() => _rowsPerPage = value);
          }
        },
        columns: kTableColumns,
        source: PrenotazioniDataSource(),
      ),
    );
  }
}

////// Columns in table.
const kTableColumns = <DataColumn>[
  DataColumn(
    label: Text('Ombrellone'),
  ),
  DataColumn(
    label: Text('Cliente'),
    tooltip: 'The total amount of food energy in the given serving size.',
    numeric: true,
  ),
  DataColumn(
    label: Text('Inizio'),
    numeric: true,
  ),
  DataColumn(
    label: Text('Fine'),
    numeric: true,
  ),
];

////// Data class.
class Prenotazione {
  Prenotazione(this.id, this.cliente, this.datainizio, this.datafine);
  final String id;
  final String cliente;
  final String datainizio;
  final String datafine;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class PrenotazioniDataSource extends DataTableSource {
  final int _selectedCount = 0;
  final List<Prenotazione> _prenotazioni = <Prenotazione>[
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
    Prenotazione('A2', 'Michele', '22/06/22', '21/08/22'),
  ];

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _prenotazioni.length) return null;
    final Prenotazione p = _prenotazioni[index];
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(p.id)),
        DataCell(Text(p.cliente)),
        DataCell(Text(p.datainizio)),
        DataCell(Text(p.datafine)),
      ],
    );
  }

  @override
  int get rowCount => _prenotazioni.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
