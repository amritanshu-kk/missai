
import 'package:missai/questions.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
final pdf = Document();
void add(){pdf.addPage(MultiPage(
    pageFormat:
    PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
    crossAxisAlignment: CrossAxisAlignment.start,

    footer: (Context context) {
      return Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 1.0 * PdfPageFormat.cm),
          child: Text('Page ${context.pageNumber} of ${context.pagesCount}',
              style: Theme.of(context)
                  .defaultTextStyle
                  .copyWith(color: PdfColors.grey)));
    },
    build: (Context context) => <Widget>[
      Header(
          level: 0,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(insti, textScaleFactor: 2),
                  Text(papername, textScaleFactor: 2),
                  Text(examname, textScaleFactor: 2),
                  Text(con, textScaleFactor: 2),

                ])
          )),
    ]));
}
