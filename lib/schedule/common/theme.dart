import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Brightness brightness;

  /// Основной цвет приложения [184CFC].
  final Color primary;

  /// Цвет заднего фона [F8F9FD].
  final Color background;

  /// Чистый белый [FFFFFF].
  final Color white;

  /// Чистый чёрный [000000].
  final Color black;

  /// Заливка для карточек [FFFFFF].
  final Color card;

  /// Светло-серый [EDF1F5].
  final Color horizontalProgressBarBg;

  /// Светло-голубой [7288FA].
  final Color lightBlue;

  /// Светло-голубой [1438B5].
  final Color calendarPrimary;

  /// Цвет текста [212121].
  final Color text;

  /// Серый [939393].
  final Color lightText1;

  /// Светло-серый [F8F9FD].
  final Color lightText2;

  /// Светло-серый [F8F9FD].
  final Color lightText3;

  /// Разделитель.
  final Color divider;

  /// Граница поля ввода.
  final Color borderInput;
  final Color errorInput;

  /// Мини-кнопка удалить.
  final Color deleteButtonMini;

  /// Кнопка назад.
  final Color buttonBack;

  /// Неактивная иконка.
  final Color inactiveIcon;

  /// Маркетинг запущен, зеленый цвет.
  final Color marketingStarted;

  /// Мусорное ведро.
  final Color bin;

  /// Запланированное действие.
  final Color planned;

  /// Тень контейнера [676767].
  final Color shadow;

  /// Неактивная кнопка для категории.
  final Color inActiveCategoryButton;

  /// Неактивная кнопка для текста категории.
  final Color inActiveCategoryText;

  /// Базовый цвет шиммера.
  final Color baseShimmer;

  /// Цвет подсветки шиммера.
  final Color highlightShimmer;

  /// Серый, рамка таббара.
  final Color tabBarBorder;

  /// Цвет текста неактивного таба.
  final Color inActiveTabText;

  final BoxShadow baseShadow;

  // --Палитра статистики.
  final Color active;
  final Color frozed;
  final Color sold;

  final Color membersInstalled;

  final Color sellsContainerUp;
  final Color sellsContainerDown;
  final Color sellsArrowUp;
  final Color sellsArrowDown;
  final Color sellsTextUp;
  final Color sellsTextDown;

  final Color todayContainer;
  final Color todayText;
  final Color yesterdayContainer;
  final Color yesterdayText;
  final Color yearAgoContainer;
  final Color yearAgoText;
  // --.

  // -- Расписание.
  final Color insertToWebsiteButtonBg;
  final Color insertToWebsiteButtonText;
  final Color previewButtonBg;
  final Color previewButtonText;
  final Color primarySchedule;
  final Color scheduleBg;
  final Color lessonScheduleBorder;
  // --.

  // -- Тренеры.
  final Color emptyImageCoachBg;
  final Color dividerTimelapse;
  // --.

  // -- Основное.
  final Color angleDown;
  // --.

  // -- Рассылки.
  final Color doneMarker;
  final Color plannedMarker;
  final Color startedMarker;
  final Color doneText;
  final Color plannedText;
  final Color startedText;
  // --.

  CustomTheme({
    required this.brightness,
    required this.primary,
    required this.background,
    required this.text,
    required this.white,
    required this.black,
    required this.lightText1,
    required this.lightText2,
    required this.lightText3,
    required this.horizontalProgressBarBg,
    required this.lightBlue,
    required this.calendarPrimary,
    required this.card,
    required this.divider,
    required this.borderInput,
    required this.errorInput,
    required this.deleteButtonMini,
    required this.buttonBack,
    required this.inactiveIcon,
    required this.active,
    required this.frozed,
    required this.sold,
    required this.membersInstalled,
    required this.sellsContainerUp,
    required this.sellsContainerDown,
    required this.sellsArrowUp,
    required this.sellsArrowDown,
    required this.sellsTextUp,
    required this.sellsTextDown,
    required this.todayContainer,
    required this.todayText,
    required this.yesterdayContainer,
    required this.yesterdayText,
    required this.yearAgoContainer,
    required this.yearAgoText,
    required this.marketingStarted,
    required this.bin,
    required this.planned,
    required this.shadow,
    required this.inActiveCategoryButton,
    required this.inActiveCategoryText,
    required this.baseShimmer,
    required this.highlightShimmer,
    required this.tabBarBorder,
    required this.inActiveTabText,
    required this.baseShadow,
    required this.insertToWebsiteButtonBg,
    required this.insertToWebsiteButtonText,
    required this.previewButtonBg,
    required this.previewButtonText,
    required this.emptyImageCoachBg,
    required this.dividerTimelapse,
    required this.primarySchedule,
    required this.scheduleBg,
    required this.lessonScheduleBorder,
    required this.angleDown,
    required this.doneMarker,
    required this.plannedMarker,
    required this.startedMarker,
    required this.doneText,
    required this.plannedText,
    required this.startedText,
  });

  @override
  CustomTheme copyWith({
    Brightness? brightness,
    Color? primary,
    Color? background,
    Color? text,
    Color? white,
    Color? black,
    Color? mainGray,
    Color? lightGray,
    Color? lightBlue,
    Color? calendarPrimary,
    Color? lightText1,
    Color? lightText2,
    Color? lightText3,
    Color? horizontalProgressBarBg,
    Color? card,
    Color? divider,
    Color? borderInput,
    Color? inactiveIcon,
    Color? errorInput,
    Color? deleteButtonMini,
    Color? buttonBack,
    Color? active,
    Color? frozed,
    Color? sold,
    Color? membersInstalled,
    Color? sellsUp,
    Color? sellsDown,
    Color? sellsArrowUp,
    Color? sellsArrowDown,
    Color? sellsTextUp,
    Color? sellsTextDown,
    Color? todayContainer,
    Color? todayText,
    Color? yesterdayContainer,
    Color? yesterdayText,
    Color? yearAgoContainer,
    Color? yearAgoText,
    Color? marketingStarted,
    Color? bin,
    Color? planned,
    Color? shadow,
    Color? inActiveCategoryButton,
    Color? inActiveCategoryText,
    Color? baseShimmer,
    Color? highlightShimmer,
    Color? tabBarBorder,
    Color? inActiveTabText,
    BoxShadow? baseShadow,
    Color? insertToWebsiteButtonBg,
    Color? insertToWebsiteButtonText,
    Color? previewButtonBg,
    Color? previewButtonText,
    Color? emptyImageCoachBg,
    Color? dividerTimelapse,
    Color? primarySchedule,
    Color? scheduleBg,
    Color? lessonScheduleBorder,
    Color? angleDown,
    Color? doneMarker,
    Color? plannedMarker,
    Color? startedMarker,
    Color? doneText,
    Color? plannedText,
    Color? startedText,
  }) {
    return CustomTheme(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      background: background ?? this.background,
      text: text ?? this.text,
      white: white ?? this.white,
      black: black ?? this.black,
      lightText1: lightText1 ?? this.lightText1,
      lightText2: lightText2 ?? this.lightText2,
      lightText3: lightText3 ?? this.lightText3,
      horizontalProgressBarBg: horizontalProgressBarBg ?? this.horizontalProgressBarBg,
      lightBlue: lightBlue ?? this.lightBlue,
      calendarPrimary: calendarPrimary ?? this.calendarPrimary,
      card: card ?? this.card,
      divider: divider ?? this.divider,
      borderInput: borderInput ?? this.borderInput,
      inactiveIcon: inactiveIcon ?? this.inactiveIcon,
      errorInput: errorInput ?? this.errorInput,
      deleteButtonMini: deleteButtonMini ?? this.deleteButtonMini,
      buttonBack: buttonBack ?? this.buttonBack,
      active: active ?? this.active,
      frozed: frozed ?? this.frozed,
      sold: sold ?? this.sold,
      membersInstalled: membersInstalled ?? this.membersInstalled,
      sellsContainerUp: sellsUp ?? sellsContainerUp,
      sellsContainerDown: sellsDown ?? sellsContainerDown,
      sellsArrowUp: sellsArrowUp ?? this.sellsArrowUp,
      sellsArrowDown: sellsArrowDown ?? this.sellsArrowDown,
      sellsTextUp: sellsTextUp ?? this.sellsTextUp,
      sellsTextDown: sellsTextDown ?? this.sellsTextDown,
      todayContainer: todayContainer ?? this.todayContainer,
      todayText: todayText ?? this.todayText,
      yesterdayContainer: yesterdayContainer ?? this.yesterdayContainer,
      yesterdayText: yesterdayText ?? this.yesterdayText,
      yearAgoContainer: yearAgoContainer ?? this.yearAgoContainer,
      yearAgoText: yearAgoText ?? this.yearAgoText,
      marketingStarted: marketingStarted ?? this.marketingStarted,
      bin: bin ?? this.bin,
      planned: planned ?? this.planned,
      shadow: shadow ?? this.shadow,
      inActiveCategoryButton: inActiveCategoryButton ?? this.inActiveCategoryButton,
      inActiveCategoryText: inActiveCategoryText ?? this.inActiveCategoryText,
      baseShimmer: baseShimmer ?? this.baseShimmer,
      highlightShimmer: highlightShimmer ?? this.highlightShimmer,
      tabBarBorder: tabBarBorder ?? this.tabBarBorder,
      inActiveTabText: inActiveTabText ?? this.inActiveTabText,
      baseShadow: baseShadow ?? this.baseShadow,
      insertToWebsiteButtonBg: insertToWebsiteButtonBg ?? this.insertToWebsiteButtonBg,
      insertToWebsiteButtonText: insertToWebsiteButtonText ?? this.insertToWebsiteButtonText,
      previewButtonBg: previewButtonBg ?? this.previewButtonBg,
      previewButtonText: previewButtonText ?? this.previewButtonText,
      emptyImageCoachBg: emptyImageCoachBg ?? this.emptyImageCoachBg,
      dividerTimelapse: dividerTimelapse ?? this.dividerTimelapse,
      primarySchedule: primarySchedule ?? this.primarySchedule,
      scheduleBg: scheduleBg ?? this.scheduleBg,
      lessonScheduleBorder: lessonScheduleBorder ?? this.lessonScheduleBorder,
      angleDown: angleDown ?? this.angleDown,
      doneMarker: doneMarker ?? this.doneMarker,
      plannedMarker: plannedMarker ?? this.plannedMarker,
      startedMarker: startedMarker ?? this.startedMarker,
      doneText: doneText ?? this.doneText,
      plannedText: plannedText ?? this.plannedText,
      startedText: startedText ?? this.startedText,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    if (other is! CustomTheme) {
      return this;
    }

    return CustomTheme(
      brightness: brightness,
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      text: Color.lerp(text, other.text, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      lightText1: Color.lerp(lightText1, other.lightText1, t)!,
      lightText2: Color.lerp(lightText2, other.lightText2, t)!,
      lightText3: Color.lerp(lightText3, other.lightText3, t)!,
      horizontalProgressBarBg: Color.lerp(
        horizontalProgressBarBg,
        other.horizontalProgressBarBg,
        t,
      )!,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t)!,
      calendarPrimary: Color.lerp(calendarPrimary, other.calendarPrimary, t)!,
      card: Color.lerp(card, other.card, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      borderInput: Color.lerp(borderInput, other.borderInput, t)!,
      inactiveIcon: Color.lerp(inactiveIcon, other.inactiveIcon, t)!,
      errorInput: Color.lerp(errorInput, other.errorInput, t)!,
      deleteButtonMini: Color.lerp(deleteButtonMini, other.deleteButtonMini, t)!,
      buttonBack: Color.lerp(buttonBack, other.buttonBack, t)!,
      active: Color.lerp(active, other.active, t)!,
      frozed: Color.lerp(frozed, other.frozed, t)!,
      sold: Color.lerp(sold, other.sold, t)!,
      membersInstalled: Color.lerp(membersInstalled, other.membersInstalled, t)!,
      sellsContainerUp: Color.lerp(sellsContainerUp, other.sellsContainerUp, t)!,
      sellsContainerDown: Color.lerp(sellsContainerDown, other.sellsContainerDown, t)!,
      sellsArrowUp: Color.lerp(sellsArrowUp, other.sellsArrowUp, t)!,
      sellsArrowDown: Color.lerp(sellsArrowDown, other.sellsArrowDown, t)!,
      sellsTextUp: Color.lerp(sellsTextUp, other.sellsTextUp, t)!,
      sellsTextDown: Color.lerp(sellsTextDown, other.sellsTextDown, t)!,
      todayContainer: Color.lerp(todayContainer, other.todayContainer, t)!,
      todayText: Color.lerp(todayText, other.todayText, t)!,
      yesterdayContainer: Color.lerp(yesterdayContainer, other.yesterdayContainer, t)!,
      yesterdayText: Color.lerp(yesterdayText, other.yesterdayText, t)!,
      yearAgoContainer: Color.lerp(yearAgoContainer, other.yearAgoContainer, t)!,
      yearAgoText: Color.lerp(yearAgoText, other.yearAgoText, t)!,
      marketingStarted: Color.lerp(marketingStarted, other.marketingStarted, t)!,
      bin: Color.lerp(bin, other.bin, t)!,
      planned: Color.lerp(planned, other.planned, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      inActiveCategoryButton: Color.lerp(inActiveCategoryButton, other.inActiveCategoryButton, t)!,
      inActiveCategoryText: Color.lerp(inActiveCategoryText, other.inActiveCategoryText, t)!,
      baseShimmer: Color.lerp(baseShimmer, other.baseShimmer, t)!,
      highlightShimmer: Color.lerp(highlightShimmer, other.highlightShimmer, t)!,
      tabBarBorder: Color.lerp(tabBarBorder, other.tabBarBorder, t)!,
      inActiveTabText: Color.lerp(inActiveTabText, other.inActiveTabText, t)!,
      baseShadow: BoxShadow.lerp(baseShadow, other.baseShadow, t)!,
      insertToWebsiteButtonBg: Color.lerp(insertToWebsiteButtonBg, other.insertToWebsiteButtonBg, t)!,
      insertToWebsiteButtonText: Color.lerp(insertToWebsiteButtonText, other.insertToWebsiteButtonText, t)!,
      previewButtonBg: Color.lerp(previewButtonBg, other.previewButtonBg, t)!,
      previewButtonText: Color.lerp(previewButtonText, other.previewButtonText, t)!,
      emptyImageCoachBg: Color.lerp(emptyImageCoachBg, other.emptyImageCoachBg, t)!,
      dividerTimelapse: Color.lerp(dividerTimelapse, other.dividerTimelapse, t)!,
      primarySchedule: Color.lerp(primarySchedule, other.primarySchedule, t)!,
      scheduleBg: Color.lerp(scheduleBg, other.scheduleBg, t)!,
      lessonScheduleBorder: Color.lerp(lessonScheduleBorder, other.lessonScheduleBorder, t)!,
      angleDown: Color.lerp(angleDown, other.angleDown, t)!,
      doneMarker: Color.lerp(doneMarker, other.doneMarker, t)!,
      plannedMarker: Color.lerp(plannedMarker, other.plannedMarker, t)!,
      startedMarker: Color.lerp(startedMarker, other.startedMarker, t)!,
      doneText: Color.lerp(doneText, other.doneText, t)!,
      plannedText: Color.lerp(plannedText, other.plannedText, t)!,
      startedText: Color.lerp(startedText, other.startedText, t)!,
    );
  }
}

class AppTheme {
  // *---* [Light Theme] *---*.
  static CustomTheme get light => CustomTheme(
        brightness: Brightness.light,
        primary: const Color(0xFF184CFC),
        background: const Color(0xFFF8F9FD),
        text: const Color(0xFF212121),
        white: const Color(0xFFFFFFFF),
        black: const Color(0xFF000000),
        lightText1: const Color(0xFF939393),
        lightText2: const Color(0xFFF8F9FD),
        lightText3: const Color(0xFFE0E0E0),
        horizontalProgressBarBg: const Color(0xFFF8F9FD),
        lightBlue: const Color(0xFF7288FA),
        calendarPrimary: const Color(0xFF1438B5),
        card: const Color(0xFFFFFFFF),
        active: const Color(0xFF25D79D),
        frozed: const Color(0xFF2CB3FF),
        sold: const Color(0xFFFE5900),
        divider: const Color(0xFFD9D9D9),
        borderInput: const Color(0xFFD9D9D9),
        inactiveIcon: const Color(0xFFD9D9D9),
        errorInput: const Color(0xFFEB5757),
        deleteButtonMini: const Color(0xFFEB5757),
        buttonBack: const Color(0xFFD9D9D9),
        membersInstalled: const Color(0xFFFF6D2F),
        sellsContainerUp: const Color(0xFFD7F9EF),
        sellsContainerDown: const Color(0xFFFFE2E5),
        sellsArrowUp: const Color(0xFF1AD598),
        sellsArrowDown: const Color(0xFFEA3A3D),
        sellsTextUp: const Color(0xFF04AA77),
        sellsTextDown: const Color(0xFFEB5757),
        todayContainer: const Color(0xFF2CB3FF).withOpacity(0.2),
        todayText: const Color(0xFF0068A1),
        yesterdayContainer: const Color(0xFF1AD598).withOpacity(0.2),
        yesterdayText: const Color(0xFF108962),
        yearAgoContainer: const Color(0xFFFE5900).withOpacity(0.2),
        yearAgoText: const Color(0xFFE05D12),
        marketingStarted: const Color(0xFF6FCF97),
        bin: const Color(0xFFFF8484),
        planned: const Color(0xFF8EA8FF),
        shadow: const Color(0xFF676767).withOpacity(0.25),
        inActiveCategoryButton: const Color(0xFFEDF0FC),
        inActiveCategoryText: const Color(0xFF5A75FF),
        baseShimmer: const Color(0xFFBDBDBD),
        highlightShimmer: const Color(0xFFF8F9FD),
        tabBarBorder: const Color(0xFFE9E9E9),
        inActiveTabText: const Color(0xFF828282),
        insertToWebsiteButtonBg: const Color(0xFF6FCF97),
        insertToWebsiteButtonText: const Color(0xFF219653),
        previewButtonBg: const Color(0xFFE4EAFF),
        previewButtonText: const Color(0xFF184CFC),
        emptyImageCoachBg: const Color(0xFFD9D9D9),
        dividerTimelapse: const Color(0xFFE0E0E0),
        primarySchedule: const Color(0xFF1438B5),
        scheduleBg: const Color(0xFFF8F9FD),
        lessonScheduleBorder: const Color(0xFFE0E0E0),
        angleDown: const Color(0xFF3C3C3C),
        doneMarker: const Color(0xFFFFD7D7),
        plannedMarker: const Color(0xFFEAEDFE),
        startedMarker: const Color(0xFFDDFAF3),
        doneText: const Color(0xFF790000),
        plannedText: const Color(0xFF001895),
        startedText: const Color(0xFF306728),
        baseShadow: BoxShadow(
          color: const Color(0xFF676767).withOpacity(0.25),
          blurRadius: 20,
          offset: const Offset(4, 4),
          spreadRadius: -10,
        ),
      );
}
