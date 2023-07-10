import '../models/lecture.dart';

final lecturesPrefilingData = [
  const Lecture(
    title: 'Вводная про платформу',
    youtubeVideoId: 'vrSAHrU5NQ4',
    description:
        'На первой вводной лекции разберем основы языка Dart и фреймворка Flutter, посмотрим на структуру проекта и базовые концепции, а так же обсудим, какими знаниями должен обладать Flutter-разработчик.',
  ),
  const Lecture(
    title: 'Routes&Navigation',
    youtubeVideoId: 'wbw-8DaIRFc',
    description:
        'На лекции мы рассмотрим что такое навигация в приложении и как она устроена во Flutter.\n'
        'Подробно разберем как устроена работа с Navigator (Navigator 1.0), изучим как производить основные операции навигации, как передавать аргументы и возвращать результат, навигируясь между экранами, посмотрим как можно отслеживать события навигации, а также рассмотрим как добавлять диалоговые и модальные окна и реализовывать некоторые сценарии навигации на примере BottomNavigationBar CupertinoTabBar.',
  ),
  const Lecture(
    title: 'Event Loop, Isolates; Advanced Networking',
    youtubeVideoId: 'gpwXBljSbTM',
    description:
        'Разберемся в том, есть ли многопоточка в Dart, поговорим о работе EventLoop, Future и Isolate. Научимся ходить в сеть с помощью наиболее популярных библиотек',
  ),
];
