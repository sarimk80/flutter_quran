// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Hadith.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hadith> _$hadithSerializer = new _$HadithSerializer();

class _$HadithSerializer implements StructuredSerializer<Hadith> {
  @override
  final Iterable<Type> types = const [Hadith, _$Hadith];
  @override
  final String wireName = 'Hadith';

  @override
  Iterable serialize(Serializers serializers, Hadith object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Hadith deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HadithBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Hadith extends Hadith {
  @override
  final String text;
  @override
  final String link;
  @override
  final String ref;

  factory _$Hadith([void Function(HadithBuilder) updates]) =>
      (new HadithBuilder()..update(updates)).build();

  _$Hadith._({this.text, this.link, this.ref}) : super._();

  @override
  Hadith rebuild(void Function(HadithBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HadithBuilder toBuilder() => new HadithBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hadith &&
        text == other.text &&
        link == other.link &&
        ref == other.ref;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, text.hashCode), link.hashCode), ref.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hadith')
          ..add('text', text)
          ..add('link', link)
          ..add('ref', ref))
        .toString();
  }
}

class HadithBuilder implements Builder<Hadith, HadithBuilder> {
  _$Hadith _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  HadithBuilder();

  HadithBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _link = _$v.link;
      _ref = _$v.ref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hadith other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hadith;
  }

  @override
  void update(void Function(HadithBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Hadith build() {
    final _$result = _$v ?? new _$Hadith._(text: text, link: link, ref: ref);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
