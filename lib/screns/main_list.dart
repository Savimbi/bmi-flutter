import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class AccordionPage extends StatelessWidget //__
{
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  build(context) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Topics'),
        ),
        body: Accordion(
          maxOpenSections: 1,
          headerBackgroundColorOpened: Colors.black54,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          // sectionClosingHapticFeedback: SectionHapticFeedback.light,
          // openAndCloseAnimation: false,
          children: [
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
              header: Text(
                  'Lorem ipsum is typically a corrupted version of \'De finibus bonorum et malorum\', a 1st century BC text by',
                  style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Row(
                children: [
                  const Icon(Icons.compare_rounded,
                      size: 120, color: Colors.orangeAccent),
                  Flexible(
                      flex: 1, child: Text(_loremIpsum, style: _contentStyle)),
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
              header: Text('About Us', style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Row(
                children: [
                  const Icon(Icons.compare_rounded,
                      size: 120, color: Colors.orangeAccent),
                  Flexible(
                      flex: 1, child: Text(_loremIpsum, style: _contentStyle)),
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
              header: Text('About Us', style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Row(
                children: [
                  const Icon(Icons.compare_rounded,
                      size: 120, color: Colors.orangeAccent),
                  Flexible(
                      flex: 1, child: Text(_loremIpsum, style: _contentStyle)),
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
              header: Text('About Us', style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Row(
                children: [
                  const Icon(Icons.compare_rounded,
                      size: 120, color: Colors.orangeAccent),
                  Flexible(
                      flex: 1, child: Text(_loremIpsum, style: _contentStyle)),
                ],
              ),
            ),
          ],
        ),
      );
} //__
