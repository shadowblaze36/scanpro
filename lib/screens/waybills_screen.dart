import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:scanpro/theme/app_theme.dart';

import '../widgets/widgets.dart';

class WaybillsScreen extends StatelessWidget {
  const WaybillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.secondary,
        appBar: AppBar(
          title: const Text('Waybills'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ResponsiveGridList(
            desiredItemWidth: 340,
            minSpacing: 10,
            children: [
              Card(
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                shadowColor: AppTheme.primary.withOpacity(0.4),
                child: Column(
                  children: [Container()],
                ),
              ),
              PoContainer(
                poNumber: 'PO: 452323233',
              ),
              PoContainer2(
                poNumber: 'PO: 443253233',
              ),
              PoContainer3(
                poNumber: 'PO: 234423233',
              ),
              PoContainer(
                poNumber: 'PO: 234423233',
              ),
              PoContainer2(
                poNumber: 'PO: 443253233',
              ),
            ],
          ),
        ));
  }
}

class PoContainer extends StatelessWidget {
  final String poNumber;
  const PoContainer({
    Key? key,
    required this.poNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('PO:', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('13862168532'),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_circle_down_rounded,
                  color: Colors.red,
                ),
                Text('Under'),
                Text('10%'),
                Icon(
                  Icons.arrow_circle_up_rounded,
                  color: Colors.green,
                ),
                Text('Over'),
                Text('2%'),
              ],
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Talla',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Estimado',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Contenedor',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('S')),
                    DataCell(Text('10')),
                    DataCell(Text('10')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('M')),
                    DataCell(Text('30')),
                    DataCell(Text('20')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('L')),
                    DataCell(Text('30')),
                    DataCell(Text('25')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PoContainer2 extends StatelessWidget {
  final String poNumber;
  const PoContainer2({
    Key? key,
    required this.poNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.red,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Talla',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Estimado',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Contenedor',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('S')),
                DataCell(Text('10')),
                DataCell(Text('10')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PoContainer3 extends StatelessWidget {
  final String poNumber;
  const PoContainer3({
    Key? key,
    required this.poNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Talla',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Estimado',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Contenedor',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('S')),
                DataCell(Text('10')),
                DataCell(Text('10')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('M')),
                DataCell(Text('30')),
                DataCell(Text('20')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PoContainer4 extends StatelessWidget {
  final String poNumber;
  const PoContainer4({
    Key? key,
    required this.poNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Talla',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Estimado',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Contenedor',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('S')),
                DataCell(Text('10')),
                DataCell(Text('10')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('M')),
                DataCell(Text('30')),
                DataCell(Text('20')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('L')),
                DataCell(Text('30')),
                DataCell(Text('25')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PoContainer5 extends StatelessWidget {
  final String poNumber;
  const PoContainer5({
    Key? key,
    required this.poNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Talla',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Estimado',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Contenedor',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('S')),
                DataCell(Text('10')),
                DataCell(Text('10')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('M')),
                DataCell(Text('30')),
                DataCell(Text('20')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('L')),
                DataCell(Text('30')),
                DataCell(Text('25')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
