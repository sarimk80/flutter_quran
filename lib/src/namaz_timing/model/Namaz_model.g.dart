// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Namaz_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Namaz> _$namazSerializer = new _$NamazSerializer();
Serializer<TodayWeather> _$todayWeatherSerializer =
    new _$TodayWeatherSerializer();
Serializer<Items> _$itemsSerializer = new _$ItemsSerializer();

class _$NamazSerializer implements StructuredSerializer<Namaz> {
  @override
  final Iterable<Type> types = const [Namaz, _$Namaz];
  @override
  final String wireName = 'Namaz';

  @override
  Iterable serialize(Serializers serializers, Namaz object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
      'method',
      serializers.serialize(object.method, specifiedType: const FullType(int)),
      'prayer_method_name',
      serializers.serialize(object.prayer_method_name,
          specifiedType: const FullType(String)),
      'daylight',
      serializers.serialize(object.daylight,
          specifiedType: const FullType(String)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'map_image',
      serializers.serialize(object.map_image,
          specifiedType: const FullType(String)),
      'sealevel',
      serializers.serialize(object.sealevel,
          specifiedType: const FullType(String)),
      'today_weather',
      serializers.serialize(object.today_weather,
          specifiedType: const FullType(TodayWeather)),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'qibla_direction',
      serializers.serialize(object.qibla_direction,
          specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'postal_code',
      serializers.serialize(object.postal_code,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'country_code',
      serializers.serialize(object.country_code,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Items)])),
      'status_valid',
      serializers.serialize(object.status_valid,
          specifiedType: const FullType(int)),
      'status_code',
      serializers.serialize(object.status_code,
          specifiedType: const FullType(int)),
      'status_description',
      serializers.serialize(object.status_description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Namaz deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NamazBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'method':
          result.method = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prayer_method_name':
          result.prayer_method_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'daylight':
          result.daylight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'map_image':
          result.map_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sealevel':
          result.sealevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'today_weather':
          result.today_weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(TodayWeather)) as TodayWeather);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qibla_direction':
          result.qibla_direction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postal_code':
          result.postal_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.country_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Items)]))
              as BuiltList);
          break;
        case 'status_valid':
          result.status_valid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status_code':
          result.status_code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status_description':
          result.status_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TodayWeatherSerializer implements StructuredSerializer<TodayWeather> {
  @override
  final Iterable<Type> types = const [TodayWeather, _$TodayWeather];
  @override
  final String wireName = 'TodayWeather';

  @override
  Iterable serialize(Serializers serializers, TodayWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TodayWeather deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodayWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemsSerializer implements StructuredSerializer<Items> {
  @override
  final Iterable<Type> types = const [Items, _$Items];
  @override
  final String wireName = 'Items';

  @override
  Iterable serialize(Serializers serializers, Items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date_for',
      serializers.serialize(object.date_for,
          specifiedType: const FullType(String)),
      'fajr',
      serializers.serialize(object.fajr, specifiedType: const FullType(String)),
      'shurooq',
      serializers.serialize(object.shurooq,
          specifiedType: const FullType(String)),
      'dhuhr',
      serializers.serialize(object.dhuhr,
          specifiedType: const FullType(String)),
      'asr',
      serializers.serialize(object.asr, specifiedType: const FullType(String)),
      'maghrib',
      serializers.serialize(object.maghrib,
          specifiedType: const FullType(String)),
      'isha',
      serializers.serialize(object.isha, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Items deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date_for':
          result.date_for = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fajr':
          result.fajr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shurooq':
          result.shurooq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dhuhr':
          result.dhuhr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'asr':
          result.asr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maghrib':
          result.maghrib = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isha':
          result.isha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Namaz extends Namaz {
  @override
  final String title;
  @override
  final String query;
  @override
  final int method;
  @override
  final String prayer_method_name;
  @override
  final String daylight;
  @override
  final String timezone;
  @override
  final String map_image;
  @override
  final String sealevel;
  @override
  final TodayWeather today_weather;
  @override
  final String link;
  @override
  final String qibla_direction;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postal_code;
  @override
  final String country;
  @override
  final String country_code;
  @override
  final BuiltList<Items> items;
  @override
  final int status_valid;
  @override
  final int status_code;
  @override
  final String status_description;

  factory _$Namaz([void Function(NamazBuilder) updates]) =>
      (new NamazBuilder()..update(updates)).build();

  _$Namaz._(
      {this.title,
      this.query,
      this.method,
      this.prayer_method_name,
      this.daylight,
      this.timezone,
      this.map_image,
      this.sealevel,
      this.today_weather,
      this.link,
      this.qibla_direction,
      this.latitude,
      this.longitude,
      this.address,
      this.city,
      this.state,
      this.postal_code,
      this.country,
      this.country_code,
      this.items,
      this.status_valid,
      this.status_code,
      this.status_description})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Namaz', 'title');
    }
    if (query == null) {
      throw new BuiltValueNullFieldError('Namaz', 'query');
    }
    if (method == null) {
      throw new BuiltValueNullFieldError('Namaz', 'method');
    }
    if (prayer_method_name == null) {
      throw new BuiltValueNullFieldError('Namaz', 'prayer_method_name');
    }
    if (daylight == null) {
      throw new BuiltValueNullFieldError('Namaz', 'daylight');
    }
    if (timezone == null) {
      throw new BuiltValueNullFieldError('Namaz', 'timezone');
    }
    if (map_image == null) {
      throw new BuiltValueNullFieldError('Namaz', 'map_image');
    }
    if (sealevel == null) {
      throw new BuiltValueNullFieldError('Namaz', 'sealevel');
    }
    if (today_weather == null) {
      throw new BuiltValueNullFieldError('Namaz', 'today_weather');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('Namaz', 'link');
    }
    if (qibla_direction == null) {
      throw new BuiltValueNullFieldError('Namaz', 'qibla_direction');
    }
    if (latitude == null) {
      throw new BuiltValueNullFieldError('Namaz', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('Namaz', 'longitude');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('Namaz', 'address');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('Namaz', 'city');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('Namaz', 'state');
    }
    if (postal_code == null) {
      throw new BuiltValueNullFieldError('Namaz', 'postal_code');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Namaz', 'country');
    }
    if (country_code == null) {
      throw new BuiltValueNullFieldError('Namaz', 'country_code');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('Namaz', 'items');
    }
    if (status_valid == null) {
      throw new BuiltValueNullFieldError('Namaz', 'status_valid');
    }
    if (status_code == null) {
      throw new BuiltValueNullFieldError('Namaz', 'status_code');
    }
    if (status_description == null) {
      throw new BuiltValueNullFieldError('Namaz', 'status_description');
    }
  }

  @override
  Namaz rebuild(void Function(NamazBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NamazBuilder toBuilder() => new NamazBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Namaz &&
        title == other.title &&
        query == other.query &&
        method == other.method &&
        prayer_method_name == other.prayer_method_name &&
        daylight == other.daylight &&
        timezone == other.timezone &&
        map_image == other.map_image &&
        sealevel == other.sealevel &&
        today_weather == other.today_weather &&
        link == other.link &&
        qibla_direction == other.qibla_direction &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        address == other.address &&
        city == other.city &&
        state == other.state &&
        postal_code == other.postal_code &&
        country == other.country &&
        country_code == other.country_code &&
        items == other.items &&
        status_valid == other.status_valid &&
        status_code == other.status_code &&
        status_description == other.status_description;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, title.hashCode), query.hashCode), method.hashCode), prayer_method_name.hashCode),
                                                                                daylight.hashCode),
                                                                            timezone.hashCode),
                                                                        map_image.hashCode),
                                                                    sealevel.hashCode),
                                                                today_weather.hashCode),
                                                            link.hashCode),
                                                        qibla_direction.hashCode),
                                                    latitude.hashCode),
                                                longitude.hashCode),
                                            address.hashCode),
                                        city.hashCode),
                                    state.hashCode),
                                postal_code.hashCode),
                            country.hashCode),
                        country_code.hashCode),
                    items.hashCode),
                status_valid.hashCode),
            status_code.hashCode),
        status_description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Namaz')
          ..add('title', title)
          ..add('query', query)
          ..add('method', method)
          ..add('prayer_method_name', prayer_method_name)
          ..add('daylight', daylight)
          ..add('timezone', timezone)
          ..add('map_image', map_image)
          ..add('sealevel', sealevel)
          ..add('today_weather', today_weather)
          ..add('link', link)
          ..add('qibla_direction', qibla_direction)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('address', address)
          ..add('city', city)
          ..add('state', state)
          ..add('postal_code', postal_code)
          ..add('country', country)
          ..add('country_code', country_code)
          ..add('items', items)
          ..add('status_valid', status_valid)
          ..add('status_code', status_code)
          ..add('status_description', status_description))
        .toString();
  }
}

class NamazBuilder implements Builder<Namaz, NamazBuilder> {
  _$Namaz _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  int _method;
  int get method => _$this._method;
  set method(int method) => _$this._method = method;

  String _prayer_method_name;
  String get prayer_method_name => _$this._prayer_method_name;
  set prayer_method_name(String prayer_method_name) =>
      _$this._prayer_method_name = prayer_method_name;

  String _daylight;
  String get daylight => _$this._daylight;
  set daylight(String daylight) => _$this._daylight = daylight;

  String _timezone;
  String get timezone => _$this._timezone;
  set timezone(String timezone) => _$this._timezone = timezone;

  String _map_image;
  String get map_image => _$this._map_image;
  set map_image(String map_image) => _$this._map_image = map_image;

  String _sealevel;
  String get sealevel => _$this._sealevel;
  set sealevel(String sealevel) => _$this._sealevel = sealevel;

  TodayWeatherBuilder _today_weather;
  TodayWeatherBuilder get today_weather =>
      _$this._today_weather ??= new TodayWeatherBuilder();
  set today_weather(TodayWeatherBuilder today_weather) =>
      _$this._today_weather = today_weather;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _qibla_direction;
  String get qibla_direction => _$this._qibla_direction;
  set qibla_direction(String qibla_direction) =>
      _$this._qibla_direction = qibla_direction;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _postal_code;
  String get postal_code => _$this._postal_code;
  set postal_code(String postal_code) => _$this._postal_code = postal_code;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _country_code;
  String get country_code => _$this._country_code;
  set country_code(String country_code) => _$this._country_code = country_code;

  ListBuilder<Items> _items;
  ListBuilder<Items> get items => _$this._items ??= new ListBuilder<Items>();
  set items(ListBuilder<Items> items) => _$this._items = items;

  int _status_valid;
  int get status_valid => _$this._status_valid;
  set status_valid(int status_valid) => _$this._status_valid = status_valid;

  int _status_code;
  int get status_code => _$this._status_code;
  set status_code(int status_code) => _$this._status_code = status_code;

  String _status_description;
  String get status_description => _$this._status_description;
  set status_description(String status_description) =>
      _$this._status_description = status_description;

  NamazBuilder();

  NamazBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _query = _$v.query;
      _method = _$v.method;
      _prayer_method_name = _$v.prayer_method_name;
      _daylight = _$v.daylight;
      _timezone = _$v.timezone;
      _map_image = _$v.map_image;
      _sealevel = _$v.sealevel;
      _today_weather = _$v.today_weather?.toBuilder();
      _link = _$v.link;
      _qibla_direction = _$v.qibla_direction;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _address = _$v.address;
      _city = _$v.city;
      _state = _$v.state;
      _postal_code = _$v.postal_code;
      _country = _$v.country;
      _country_code = _$v.country_code;
      _items = _$v.items?.toBuilder();
      _status_valid = _$v.status_valid;
      _status_code = _$v.status_code;
      _status_description = _$v.status_description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Namaz other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Namaz;
  }

  @override
  void update(void Function(NamazBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Namaz build() {
    _$Namaz _$result;
    try {
      _$result = _$v ??
          new _$Namaz._(
              title: title,
              query: query,
              method: method,
              prayer_method_name: prayer_method_name,
              daylight: daylight,
              timezone: timezone,
              map_image: map_image,
              sealevel: sealevel,
              today_weather: today_weather.build(),
              link: link,
              qibla_direction: qibla_direction,
              latitude: latitude,
              longitude: longitude,
              address: address,
              city: city,
              state: state,
              postal_code: postal_code,
              country: country,
              country_code: country_code,
              items: items.build(),
              status_valid: status_valid,
              status_code: status_code,
              status_description: status_description);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'today_weather';
        today_weather.build();

        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Namaz', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TodayWeather extends TodayWeather {
  @override
  final String temperature;

  factory _$TodayWeather([void Function(TodayWeatherBuilder) updates]) =>
      (new TodayWeatherBuilder()..update(updates)).build();

  _$TodayWeather._({this.temperature}) : super._() {
    if (temperature == null) {
      throw new BuiltValueNullFieldError('TodayWeather', 'temperature');
    }
  }

  @override
  TodayWeather rebuild(void Function(TodayWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodayWeatherBuilder toBuilder() => new TodayWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodayWeather && temperature == other.temperature;
  }

  @override
  int get hashCode {
    return $jf($jc(0, temperature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodayWeather')
          ..add('temperature', temperature))
        .toString();
  }
}

class TodayWeatherBuilder
    implements Builder<TodayWeather, TodayWeatherBuilder> {
  _$TodayWeather _$v;

  String _temperature;
  String get temperature => _$this._temperature;
  set temperature(String temperature) => _$this._temperature = temperature;

  TodayWeatherBuilder();

  TodayWeatherBuilder get _$this {
    if (_$v != null) {
      _temperature = _$v.temperature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodayWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TodayWeather;
  }

  @override
  void update(void Function(TodayWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodayWeather build() {
    final _$result = _$v ?? new _$TodayWeather._(temperature: temperature);
    replace(_$result);
    return _$result;
  }
}

class _$Items extends Items {
  @override
  final String date_for;
  @override
  final String fajr;
  @override
  final String shurooq;
  @override
  final String dhuhr;
  @override
  final String asr;
  @override
  final String maghrib;
  @override
  final String isha;

  factory _$Items([void Function(ItemsBuilder) updates]) =>
      (new ItemsBuilder()..update(updates)).build();

  _$Items._(
      {this.date_for,
      this.fajr,
      this.shurooq,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.isha})
      : super._() {
    if (date_for == null) {
      throw new BuiltValueNullFieldError('Items', 'date_for');
    }
    if (fajr == null) {
      throw new BuiltValueNullFieldError('Items', 'fajr');
    }
    if (shurooq == null) {
      throw new BuiltValueNullFieldError('Items', 'shurooq');
    }
    if (dhuhr == null) {
      throw new BuiltValueNullFieldError('Items', 'dhuhr');
    }
    if (asr == null) {
      throw new BuiltValueNullFieldError('Items', 'asr');
    }
    if (maghrib == null) {
      throw new BuiltValueNullFieldError('Items', 'maghrib');
    }
    if (isha == null) {
      throw new BuiltValueNullFieldError('Items', 'isha');
    }
  }

  @override
  Items rebuild(void Function(ItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsBuilder toBuilder() => new ItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Items &&
        date_for == other.date_for &&
        fajr == other.fajr &&
        shurooq == other.shurooq &&
        dhuhr == other.dhuhr &&
        asr == other.asr &&
        maghrib == other.maghrib &&
        isha == other.isha;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, date_for.hashCode), fajr.hashCode),
                        shurooq.hashCode),
                    dhuhr.hashCode),
                asr.hashCode),
            maghrib.hashCode),
        isha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Items')
          ..add('date_for', date_for)
          ..add('fajr', fajr)
          ..add('shurooq', shurooq)
          ..add('dhuhr', dhuhr)
          ..add('asr', asr)
          ..add('maghrib', maghrib)
          ..add('isha', isha))
        .toString();
  }
}

class ItemsBuilder implements Builder<Items, ItemsBuilder> {
  _$Items _$v;

  String _date_for;
  String get date_for => _$this._date_for;
  set date_for(String date_for) => _$this._date_for = date_for;

  String _fajr;
  String get fajr => _$this._fajr;
  set fajr(String fajr) => _$this._fajr = fajr;

  String _shurooq;
  String get shurooq => _$this._shurooq;
  set shurooq(String shurooq) => _$this._shurooq = shurooq;

  String _dhuhr;
  String get dhuhr => _$this._dhuhr;
  set dhuhr(String dhuhr) => _$this._dhuhr = dhuhr;

  String _asr;
  String get asr => _$this._asr;
  set asr(String asr) => _$this._asr = asr;

  String _maghrib;
  String get maghrib => _$this._maghrib;
  set maghrib(String maghrib) => _$this._maghrib = maghrib;

  String _isha;
  String get isha => _$this._isha;
  set isha(String isha) => _$this._isha = isha;

  ItemsBuilder();

  ItemsBuilder get _$this {
    if (_$v != null) {
      _date_for = _$v.date_for;
      _fajr = _$v.fajr;
      _shurooq = _$v.shurooq;
      _dhuhr = _$v.dhuhr;
      _asr = _$v.asr;
      _maghrib = _$v.maghrib;
      _isha = _$v.isha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Items other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Items;
  }

  @override
  void update(void Function(ItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Items build() {
    final _$result = _$v ??
        new _$Items._(
            date_for: date_for,
            fajr: fajr,
            shurooq: shurooq,
            dhuhr: dhuhr,
            asr: asr,
            maghrib: maghrib,
            isha: isha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
