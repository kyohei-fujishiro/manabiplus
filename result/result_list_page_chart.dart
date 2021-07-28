import 'package:flutter/material.dart';
import 'package:manabiplus/learn/learn_list_model.dart';
import 'package:manabiplus/learn/learn_page.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class ResultListPageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ChangeNotifierProvider<LearnListModel>(
        create: (_) => LearnListModel(),
        child: Consumer<LearnListModel>(builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, left: 13.0, right: 8.0),
            child: Column(
              children: <Widget>[
                Text(
                  "教材の一覧",

                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xff707070),
                      fontFamily: 'Material',
                      fontWeight: FontWeight.bold),
                ),//教材一覧
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnPage(),//todo
                        fullscreenDialog: true,
                      ),
                    );
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('NextStage',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: 'Material',
                                    fontWeight: FontWeight.bold),
                                                        ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1.0,
                                        blurRadius: 10.0,
                                        offset: Offset(0, 11),
                                      ),
                                    ]
                                ),
                                child: Card(
                                  child: Container(
                                    width: 400 ,
                                    height: 300,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10, right: 10, bottom: 10),
                                              child: Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    Text('学習進捗',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontFamily: 'Material',
                                                          fontWeight: FontWeight.bold),
                                                    ),

                                                  ],
                                                ),
                                                //width: 150,
                                                //height: 200,
                                              ),
                                            ),
                                            
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),//学習進捗
                                ),
                              ),
                              SizedBox(height:30.0),
                            ],
                          ),
                        ),



                        ],
                      ),

                    ),
                  ),
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}

class HorizontalBarLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  HorizontalBarLabelChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory HorizontalBarLabelChart.withSampleData() {
    return new HorizontalBarLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit and the
  // area outside of the bar is larger than the bar, it will draw outside of the
  // bar. Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: false,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      // Hide domain axis.
      domainAxis:
      new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
          '${sales.year}: \$${sales.sales.toString()}')
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}


