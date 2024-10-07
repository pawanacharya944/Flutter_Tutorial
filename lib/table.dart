import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Table Widget",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 33), // padding around the table
        child: Center(
          child: Table(
            key: const Key(
                "Football_Table"), // unique key for the table, useful for testing
            border: TableBorder.all(
              color: Colors.white, // this give white border around the table
              width: 2, //thickness of the border
              style: BorderStyle.solid, // solid style for the border
            ),

            columnWidths: const {
              0: FlexColumnWidth(
                  1), // first column takes 1 portion of available width

              1: FlexColumnWidth(
                  2), // second column takes 2 portions of width (wider)
              2: FlexColumnWidth(1), // third column takes 1 portion
            },

            defaultVerticalAlignment: TableCellVerticalAlignment
                .middle, // aligns text in the center vertically

            children: [
              _buildTableRow('Player', 'Team', 'Goals',
                  isHeader: true), // header row with titles

              _buildTableRow('Cristiano Ronaldo', 'AL-Nassr', '30'),

              _buildTableRow('Lionel Messi', 'Inter Miami', '25'),

              _buildTableRow('Neymar Jr', 'AL-Hilal', '22'),

              _buildTableRow('Erling Haaland', 'Man City', '45'),

              _buildTableRow('Kylian Mbappe', 'PSG', '40'),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build a row in the table

  TableRow _buildTableRow(String player, String team, String goals,
      {bool isHeader = false}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHeader ? Colors.blueGrey[200] : Colors.green[200],
      ),
      children: [
        _buildTableCell(player,
            isHeader), //calls helper function to create a cell for player

        _buildTableCell(team, isHeader), // cell for team

        _buildTableCell(goals, isHeader), // cell for goals
      ],
    );
  }

  // Helper function to create individual cells

  Widget _buildTableCell(String content, bool isHeader) {
    return Padding(
      padding: const EdgeInsets.all(12.0), // padding inside each cell

      child: Text(
        content,
        textAlign: TextAlign.center, // centers the text horizontally

        style: TextStyle(
          fontSize: isHeader ? 18 : 16, // Larger text for header
          fontWeight: isHeader
              ? FontWeight.bold
              : FontWeight
                  .normal, // bold text for header and normal one for other

          color: isHeader
              ? Colors.black
              : Colors.black, // black text for header, white for rows
        ),
      ),
    );
  }
}
