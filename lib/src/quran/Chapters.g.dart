// GENERATED CODE - DO NOT MODIFY BY HAND

part of Chapters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Main> _$mainSerializer = new _$MainSerializer();
Serializer<Chapters> _$chaptersSerializer = new _$ChaptersSerializer();

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable serialize(Serializers serializers, Main object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'chapters',
      serializers.serialize(object.chapters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Chapters)])),
    ];

    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chapters':
          result.chapters.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Chapters)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ChaptersSerializer implements StructuredSerializer<Chapters> {
  @override
  final Iterable<Type> types = const [Chapters, _$Chapters];
  @override
  final String wireName = 'Chapters';

  @override
  Iterable serialize(Serializers serializers, Chapters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'chapter_number',
      serializers.serialize(object.chapter_number,
          specifiedType: const FullType(int)),
      'bismillah_pre',
      serializers.serialize(object.bismillah_pre,
          specifiedType: const FullType(bool)),
      'revelation_order',
      serializers.serialize(object.revelation_order,
          specifiedType: const FullType(int)),
      'revelation_place',
      serializers.serialize(object.revelation_place,
          specifiedType: const FullType(String)),
      'name_complex',
      serializers.serialize(object.name_complex,
          specifiedType: const FullType(String)),
      'name_arabic',
      serializers.serialize(object.name_arabic,
          specifiedType: const FullType(String)),
      'name_simple',
      serializers.serialize(object.name_simple,
          specifiedType: const FullType(String)),
      'verses_count',
      serializers.serialize(object.verses_count,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Chapters deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChaptersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chapter_number':
          result.chapter_number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bismillah_pre':
          result.bismillah_pre = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'revelation_order':
          result.revelation_order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'revelation_place':
          result.revelation_place = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_complex':
          result.name_complex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_arabic':
          result.name_arabic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_simple':
          result.name_simple = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verses_count':
          result.verses_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Main extends Main {
  @override
  final BuiltList<Chapters> chapters;

  factory _$Main([void Function(MainBuilder) updates]) =>
      (new MainBuilder()..update(updates)).build();

  _$Main._({this.chapters}) : super._() {
    if (chapters == null) {
      throw new BuiltValueNullFieldError('Main', 'chapters');
    }
  }

  @override
  Main rebuild(void Function(MainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main && chapters == other.chapters;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chapters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Main')..add('chapters', chapters))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main _$v;

  ListBuilder<Chapters> _chapters;
  ListBuilder<Chapters> get chapters =>
      _$this._chapters ??= new ListBuilder<Chapters>();
  set chapters(ListBuilder<Chapters> chapters) => _$this._chapters = chapters;

  MainBuilder();

  MainBuilder get _$this {
    if (_$v != null) {
      _chapters = _$v.chapters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Main build() {
    _$Main _$result;
    try {
      _$result = _$v ?? new _$Main._(chapters: chapters.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chapters';
        chapters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Main', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Chapters extends Chapters {
  @override
  final int id;
  @override
  final int chapter_number;
  @override
  final bool bismillah_pre;
  @override
  final int revelation_order;
  @override
  final String revelation_place;
  @override
  final String name_complex;
  @override
  final String name_arabic;
  @override
  final String name_simple;
  @override
  final int verses_count;

  factory _$Chapters([void Function(ChaptersBuilder) updates]) =>
      (new ChaptersBuilder()..update(updates)).build();

  _$Chapters._(
      {this.id,
      this.chapter_number,
      this.bismillah_pre,
      this.revelation_order,
      this.revelation_place,
      this.name_complex,
      this.name_arabic,
      this.name_simple,
      this.verses_count})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Chapters', 'id');
    }
    if (chapter_number == null) {
      throw new BuiltValueNullFieldError('Chapters', 'chapter_number');
    }
    if (bismillah_pre == null) {
      throw new BuiltValueNullFieldError('Chapters', 'bismillah_pre');
    }
    if (revelation_order == null) {
      throw new BuiltValueNullFieldError('Chapters', 'revelation_order');
    }
    if (revelation_place == null) {
      throw new BuiltValueNullFieldError('Chapters', 'revelation_place');
    }
    if (name_complex == null) {
      throw new BuiltValueNullFieldError('Chapters', 'name_complex');
    }
    if (name_arabic == null) {
      throw new BuiltValueNullFieldError('Chapters', 'name_arabic');
    }
    if (name_simple == null) {
      throw new BuiltValueNullFieldError('Chapters', 'name_simple');
    }
    if (verses_count == null) {
      throw new BuiltValueNullFieldError('Chapters', 'verses_count');
    }
  }

  @override
  Chapters rebuild(void Function(ChaptersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChaptersBuilder toBuilder() => new ChaptersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chapters &&
        id == other.id &&
        chapter_number == other.chapter_number &&
        bismillah_pre == other.bismillah_pre &&
        revelation_order == other.revelation_order &&
        revelation_place == other.revelation_place &&
        name_complex == other.name_complex &&
        name_arabic == other.name_arabic &&
        name_simple == other.name_simple &&
        verses_count == other.verses_count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, id.hashCode),
                                    chapter_number.hashCode),
                                bismillah_pre.hashCode),
                            revelation_order.hashCode),
                        revelation_place.hashCode),
                    name_complex.hashCode),
                name_arabic.hashCode),
            name_simple.hashCode),
        verses_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chapters')
          ..add('id', id)
          ..add('chapter_number', chapter_number)
          ..add('bismillah_pre', bismillah_pre)
          ..add('revelation_order', revelation_order)
          ..add('revelation_place', revelation_place)
          ..add('name_complex', name_complex)
          ..add('name_arabic', name_arabic)
          ..add('name_simple', name_simple)
          ..add('verses_count', verses_count))
        .toString();
  }
}

class ChaptersBuilder implements Builder<Chapters, ChaptersBuilder> {
  _$Chapters _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _chapter_number;
  int get chapter_number => _$this._chapter_number;
  set chapter_number(int chapter_number) =>
      _$this._chapter_number = chapter_number;

  bool _bismillah_pre;
  bool get bismillah_pre => _$this._bismillah_pre;
  set bismillah_pre(bool bismillah_pre) =>
      _$this._bismillah_pre = bismillah_pre;

  int _revelation_order;
  int get revelation_order => _$this._revelation_order;
  set revelation_order(int revelation_order) =>
      _$this._revelation_order = revelation_order;

  String _revelation_place;
  String get revelation_place => _$this._revelation_place;
  set revelation_place(String revelation_place) =>
      _$this._revelation_place = revelation_place;

  String _name_complex;
  String get name_complex => _$this._name_complex;
  set name_complex(String name_complex) => _$this._name_complex = name_complex;

  String _name_arabic;
  String get name_arabic => _$this._name_arabic;
  set name_arabic(String name_arabic) => _$this._name_arabic = name_arabic;

  String _name_simple;
  String get name_simple => _$this._name_simple;
  set name_simple(String name_simple) => _$this._name_simple = name_simple;

  int _verses_count;
  int get verses_count => _$this._verses_count;
  set verses_count(int verses_count) => _$this._verses_count = verses_count;

  ChaptersBuilder();

  ChaptersBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _chapter_number = _$v.chapter_number;
      _bismillah_pre = _$v.bismillah_pre;
      _revelation_order = _$v.revelation_order;
      _revelation_place = _$v.revelation_place;
      _name_complex = _$v.name_complex;
      _name_arabic = _$v.name_arabic;
      _name_simple = _$v.name_simple;
      _verses_count = _$v.verses_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chapters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chapters;
  }

  @override
  void update(void Function(ChaptersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chapters build() {
    final _$result = _$v ??
        new _$Chapters._(
            id: id,
            chapter_number: chapter_number,
            bismillah_pre: bismillah_pre,
            revelation_order: revelation_order,
            revelation_place: revelation_place,
            name_complex: name_complex,
            name_arabic: name_arabic,
            name_simple: name_simple,
            verses_count: verses_count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
