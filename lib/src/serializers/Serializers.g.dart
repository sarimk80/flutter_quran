// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Ayahs.serializer)
      ..add(Chapters.serializer)
      ..add(Data.serializer)
      ..add(Hadith.serializer)
      ..add(Items.serializer)
      ..add(Main.serializer)
      ..add(Model.serializer)
      ..add(Namaz.serializer)
      ..add(TodayWeather.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Ayahs)]),
          () => new ListBuilder<Ayahs>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Chapters)]),
          () => new ListBuilder<Chapters>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Items)]),
          () => new ListBuilder<Items>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
