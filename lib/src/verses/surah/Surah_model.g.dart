// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Surah_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Surah> _$surahSerializer = new _$SurahSerializer();
Serializer<Data> _$dataSerializer = new _$DataSerializer();
Serializer<Ayahs> _$ayahsSerializer = new _$AyahsSerializer();

class _$SurahSerializer implements StructuredSerializer<Surah> {
  @override
  final Iterable<Type> types = const [Surah, _$Surah];
  @override
  final String wireName = 'Surah';

  @override
  Iterable serialize(Serializers serializers, Surah object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Data)])),
    ];

    return result;
  }

  @override
  Surah deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SurahBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Data)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable serialize(Serializers serializers, Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'revelationType',
      serializers.serialize(object.revelationType,
          specifiedType: const FullType(String)),
      'numberOfAyahs',
      serializers.serialize(object.numberOfAyahs,
          specifiedType: const FullType(int)),
      'ayahs',
      serializers.serialize(object.ayahs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Ayahs)])),
    ];
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.englishName != null) {
      result
        ..add('englishName')
        ..add(serializers.serialize(object.englishName,
            specifiedType: const FullType(String)));
    }
    if (object.englishNameTranslation != null) {
      result
        ..add('englishNameTranslation')
        ..add(serializers.serialize(object.englishNameTranslation,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'englishName':
          result.englishName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'englishNameTranslation':
          result.englishNameTranslation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revelationType':
          result.revelationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberOfAyahs':
          result.numberOfAyahs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ayahs':
          result.ayahs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Ayahs)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AyahsSerializer implements StructuredSerializer<Ayahs> {
  @override
  final Iterable<Type> types = const [Ayahs, _$Ayahs];
  @override
  final String wireName = 'Ayahs';

  @override
  Iterable serialize(Serializers serializers, Ayahs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.numberInSurah != null) {
      result
        ..add('numberInSurah')
        ..add(serializers.serialize(object.numberInSurah,
            specifiedType: const FullType(int)));
    }
    if (object.juz != null) {
      result
        ..add('juz')
        ..add(serializers.serialize(object.juz,
            specifiedType: const FullType(int)));
    }
    if (object.manzil != null) {
      result
        ..add('manzil')
        ..add(serializers.serialize(object.manzil,
            specifiedType: const FullType(int)));
    }
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.ruku != null) {
      result
        ..add('ruku')
        ..add(serializers.serialize(object.ruku,
            specifiedType: const FullType(int)));
    }
    if (object.hizbQuarter != null) {
      result
        ..add('hizbQuarter')
        ..add(serializers.serialize(object.hizbQuarter,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Ayahs deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AyahsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberInSurah':
          result.numberInSurah = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'juz':
          result.juz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'manzil':
          result.manzil = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ruku':
          result.ruku = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hizbQuarter':
          result.hizbQuarter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Surah extends Surah {
  @override
  final BuiltList<Data> data;

  factory _$Surah([void Function(SurahBuilder) updates]) =>
      (new SurahBuilder()..update(updates)).build();

  _$Surah._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Surah', 'data');
    }
  }

  @override
  Surah rebuild(void Function(SurahBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurahBuilder toBuilder() => new SurahBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Surah && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Surah')..add('data', data)).toString();
  }
}

class SurahBuilder implements Builder<Surah, SurahBuilder> {
  _$Surah _$v;

  ListBuilder<Data> _data;
  ListBuilder<Data> get data => _$this._data ??= new ListBuilder<Data>();
  set data(ListBuilder<Data> data) => _$this._data = data;

  SurahBuilder();

  SurahBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Surah other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Surah;
  }

  @override
  void update(void Function(SurahBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Surah build() {
    _$Surah _$result;
    try {
      _$result = _$v ?? new _$Surah._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Surah', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Data extends Data {
  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;
  @override
  final BuiltList<Ayahs> ayahs;

  factory _$Data([void Function(DataBuilder) updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.numberOfAyahs,
      this.ayahs})
      : super._() {
    if (revelationType == null) {
      throw new BuiltValueNullFieldError('Data', 'revelationType');
    }
    if (numberOfAyahs == null) {
      throw new BuiltValueNullFieldError('Data', 'numberOfAyahs');
    }
    if (ayahs == null) {
      throw new BuiltValueNullFieldError('Data', 'ayahs');
    }
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        number == other.number &&
        name == other.name &&
        englishName == other.englishName &&
        englishNameTranslation == other.englishNameTranslation &&
        revelationType == other.revelationType &&
        numberOfAyahs == other.numberOfAyahs &&
        ayahs == other.ayahs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, number.hashCode), name.hashCode),
                        englishName.hashCode),
                    englishNameTranslation.hashCode),
                revelationType.hashCode),
            numberOfAyahs.hashCode),
        ayahs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('number', number)
          ..add('name', name)
          ..add('englishName', englishName)
          ..add('englishNameTranslation', englishNameTranslation)
          ..add('revelationType', revelationType)
          ..add('numberOfAyahs', numberOfAyahs)
          ..add('ayahs', ayahs))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _englishName;
  String get englishName => _$this._englishName;
  set englishName(String englishName) => _$this._englishName = englishName;

  String _englishNameTranslation;
  String get englishNameTranslation => _$this._englishNameTranslation;
  set englishNameTranslation(String englishNameTranslation) =>
      _$this._englishNameTranslation = englishNameTranslation;

  String _revelationType;
  String get revelationType => _$this._revelationType;
  set revelationType(String revelationType) =>
      _$this._revelationType = revelationType;

  int _numberOfAyahs;
  int get numberOfAyahs => _$this._numberOfAyahs;
  set numberOfAyahs(int numberOfAyahs) => _$this._numberOfAyahs = numberOfAyahs;

  ListBuilder<Ayahs> _ayahs;
  ListBuilder<Ayahs> get ayahs => _$this._ayahs ??= new ListBuilder<Ayahs>();
  set ayahs(ListBuilder<Ayahs> ayahs) => _$this._ayahs = ayahs;

  DataBuilder();

  DataBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _name = _$v.name;
      _englishName = _$v.englishName;
      _englishNameTranslation = _$v.englishNameTranslation;
      _revelationType = _$v.revelationType;
      _numberOfAyahs = _$v.numberOfAyahs;
      _ayahs = _$v.ayahs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    _$Data _$result;
    try {
      _$result = _$v ??
          new _$Data._(
              number: number,
              name: name,
              englishName: englishName,
              englishNameTranslation: englishNameTranslation,
              revelationType: revelationType,
              numberOfAyahs: numberOfAyahs,
              ayahs: ayahs.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ayahs';
        ayahs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ayahs extends Ayahs {
  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;
  @override
  final int juz;
  @override
  final int manzil;
  @override
  final int page;
  @override
  final int ruku;
  @override
  final int hizbQuarter;

  factory _$Ayahs([void Function(AyahsBuilder) updates]) =>
      (new AyahsBuilder()..update(updates)).build();

  _$Ayahs._(
      {this.number,
      this.text,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.ruku,
      this.hizbQuarter})
      : super._();

  @override
  Ayahs rebuild(void Function(AyahsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AyahsBuilder toBuilder() => new AyahsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ayahs &&
        number == other.number &&
        text == other.text &&
        numberInSurah == other.numberInSurah &&
        juz == other.juz &&
        manzil == other.manzil &&
        page == other.page &&
        ruku == other.ruku &&
        hizbQuarter == other.hizbQuarter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, number.hashCode), text.hashCode),
                            numberInSurah.hashCode),
                        juz.hashCode),
                    manzil.hashCode),
                page.hashCode),
            ruku.hashCode),
        hizbQuarter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ayahs')
          ..add('number', number)
          ..add('text', text)
          ..add('numberInSurah', numberInSurah)
          ..add('juz', juz)
          ..add('manzil', manzil)
          ..add('page', page)
          ..add('ruku', ruku)
          ..add('hizbQuarter', hizbQuarter))
        .toString();
  }
}

class AyahsBuilder implements Builder<Ayahs, AyahsBuilder> {
  _$Ayahs _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _numberInSurah;
  int get numberInSurah => _$this._numberInSurah;
  set numberInSurah(int numberInSurah) => _$this._numberInSurah = numberInSurah;

  int _juz;
  int get juz => _$this._juz;
  set juz(int juz) => _$this._juz = juz;

  int _manzil;
  int get manzil => _$this._manzil;
  set manzil(int manzil) => _$this._manzil = manzil;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _ruku;
  int get ruku => _$this._ruku;
  set ruku(int ruku) => _$this._ruku = ruku;

  int _hizbQuarter;
  int get hizbQuarter => _$this._hizbQuarter;
  set hizbQuarter(int hizbQuarter) => _$this._hizbQuarter = hizbQuarter;

  AyahsBuilder();

  AyahsBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _text = _$v.text;
      _numberInSurah = _$v.numberInSurah;
      _juz = _$v.juz;
      _manzil = _$v.manzil;
      _page = _$v.page;
      _ruku = _$v.ruku;
      _hizbQuarter = _$v.hizbQuarter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ayahs other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ayahs;
  }

  @override
  void update(void Function(AyahsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ayahs build() {
    final _$result = _$v ??
        new _$Ayahs._(
            number: number,
            text: text,
            numberInSurah: numberInSurah,
            juz: juz,
            manzil: manzil,
            page: page,
            ruku: ruku,
            hizbQuarter: hizbQuarter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
