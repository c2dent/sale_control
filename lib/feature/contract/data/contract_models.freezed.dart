// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return _Contract.fromJson(json);
}

/// @nodoc
mixin _$Contract {
  int get id => throw _privateConstructorUsedError;
  Client get client => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  Employee get advertiser => throw _privateConstructorUsedError;
  @JsonKey(name: "count_filter")
  int get countFilter => throw _privateConstructorUsedError;
  @JsonKey(name: "month_count")
  int get monthCount => throw _privateConstructorUsedError;
  @JsonKey(name: "cost_price")
  int get costPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "debt_on_month")
  int get debtOnMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "price_amount")
  int get priceAmount => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_months")
  int get paidMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amount")
  int get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "setup_date")
  DateTime get setupDate => throw _privateConstructorUsedError;
  @JsonKey(name: "is_confirm")
  bool get isConfirm => throw _privateConstructorUsedError;
  @JsonKey(name: "confirm_date")
  DateTime? get confirmDate => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractCopyWith<Contract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCopyWith<$Res> {
  factory $ContractCopyWith(Contract value, $Res Function(Contract) then) =
      _$ContractCopyWithImpl<$Res, Contract>;
  @useResult
  $Res call(
      {int id,
      Client client,
      Region region,
      Employee advertiser,
      @JsonKey(name: "count_filter") int countFilter,
      @JsonKey(name: "month_count") int monthCount,
      @JsonKey(name: "cost_price") int costPrice,
      @JsonKey(name: "debt_on_month") int debtOnMonth,
      @JsonKey(name: "price_amount") int priceAmount,
      User creator,
      @JsonKey(name: "paid_months") int paidMonths,
      @JsonKey(name: "paid_amount") int paidAmount,
      @JsonKey(name: "setup_date") DateTime setupDate,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "confirm_date") DateTime? confirmDate,
      bool closed,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ClientCopyWith<$Res> get client;
  $RegionCopyWith<$Res> get region;
  $EmployeeCopyWith<$Res> get advertiser;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$ContractCopyWithImpl<$Res, $Val extends Contract>
    implements $ContractCopyWith<$Res> {
  _$ContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? client = null,
    Object? region = null,
    Object? advertiser = null,
    Object? countFilter = null,
    Object? monthCount = null,
    Object? costPrice = null,
    Object? debtOnMonth = null,
    Object? priceAmount = null,
    Object? creator = null,
    Object? paidMonths = null,
    Object? paidAmount = null,
    Object? setupDate = null,
    Object? isConfirm = null,
    Object? confirmDate = freezed,
    Object? closed = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      advertiser: null == advertiser
          ? _value.advertiser
          : advertiser // ignore: cast_nullable_to_non_nullable
              as Employee,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as int,
      monthCount: null == monthCount
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as int,
      costPrice: null == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as int,
      debtOnMonth: null == debtOnMonth
          ? _value.debtOnMonth
          : debtOnMonth // ignore: cast_nullable_to_non_nullable
              as int,
      priceAmount: null == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      paidMonths: null == paidMonths
          ? _value.paidMonths
          : paidMonths // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      setupDate: null == setupDate
          ? _value.setupDate
          : setupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get advertiser {
    return $EmployeeCopyWith<$Res>(_value.advertiser, (value) {
      return _then(_value.copyWith(advertiser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContractCopyWith<$Res> implements $ContractCopyWith<$Res> {
  factory _$$_ContractCopyWith(
          _$_Contract value, $Res Function(_$_Contract) then) =
      __$$_ContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Client client,
      Region region,
      Employee advertiser,
      @JsonKey(name: "count_filter") int countFilter,
      @JsonKey(name: "month_count") int monthCount,
      @JsonKey(name: "cost_price") int costPrice,
      @JsonKey(name: "debt_on_month") int debtOnMonth,
      @JsonKey(name: "price_amount") int priceAmount,
      User creator,
      @JsonKey(name: "paid_months") int paidMonths,
      @JsonKey(name: "paid_amount") int paidAmount,
      @JsonKey(name: "setup_date") DateTime setupDate,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "confirm_date") DateTime? confirmDate,
      bool closed,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $RegionCopyWith<$Res> get region;
  @override
  $EmployeeCopyWith<$Res> get advertiser;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_ContractCopyWithImpl<$Res>
    extends _$ContractCopyWithImpl<$Res, _$_Contract>
    implements _$$_ContractCopyWith<$Res> {
  __$$_ContractCopyWithImpl(
      _$_Contract _value, $Res Function(_$_Contract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? client = null,
    Object? region = null,
    Object? advertiser = null,
    Object? countFilter = null,
    Object? monthCount = null,
    Object? costPrice = null,
    Object? debtOnMonth = null,
    Object? priceAmount = null,
    Object? creator = null,
    Object? paidMonths = null,
    Object? paidAmount = null,
    Object? setupDate = null,
    Object? isConfirm = null,
    Object? confirmDate = freezed,
    Object? closed = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Contract(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      advertiser: null == advertiser
          ? _value.advertiser
          : advertiser // ignore: cast_nullable_to_non_nullable
              as Employee,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as int,
      monthCount: null == monthCount
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as int,
      costPrice: null == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as int,
      debtOnMonth: null == debtOnMonth
          ? _value.debtOnMonth
          : debtOnMonth // ignore: cast_nullable_to_non_nullable
              as int,
      priceAmount: null == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      paidMonths: null == paidMonths
          ? _value.paidMonths
          : paidMonths // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      setupDate: null == setupDate
          ? _value.setupDate
          : setupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contract implements _Contract {
  const _$_Contract(
      {required this.id,
      required this.client,
      required this.region,
      required this.advertiser,
      @JsonKey(name: "count_filter") required this.countFilter,
      @JsonKey(name: "month_count") required this.monthCount,
      @JsonKey(name: "cost_price") required this.costPrice,
      @JsonKey(name: "debt_on_month") required this.debtOnMonth,
      @JsonKey(name: "price_amount") required this.priceAmount,
      required this.creator,
      @JsonKey(name: "paid_months") required this.paidMonths,
      @JsonKey(name: "paid_amount") required this.paidAmount,
      @JsonKey(name: "setup_date") required this.setupDate,
      @JsonKey(name: "is_confirm") required this.isConfirm,
      @JsonKey(name: "confirm_date") required this.confirmDate,
      required this.closed,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Contract.fromJson(Map<String, dynamic> json) =>
      _$$_ContractFromJson(json);

  @override
  final int id;
  @override
  final Client client;
  @override
  final Region region;
  @override
  final Employee advertiser;
  @override
  @JsonKey(name: "count_filter")
  final int countFilter;
  @override
  @JsonKey(name: "month_count")
  final int monthCount;
  @override
  @JsonKey(name: "cost_price")
  final int costPrice;
  @override
  @JsonKey(name: "debt_on_month")
  final int debtOnMonth;
  @override
  @JsonKey(name: "price_amount")
  final int priceAmount;
  @override
  final User creator;
  @override
  @JsonKey(name: "paid_months")
  final int paidMonths;
  @override
  @JsonKey(name: "paid_amount")
  final int paidAmount;
  @override
  @JsonKey(name: "setup_date")
  final DateTime setupDate;
  @override
  @JsonKey(name: "is_confirm")
  final bool isConfirm;
  @override
  @JsonKey(name: "confirm_date")
  final DateTime? confirmDate;
  @override
  final bool closed;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Contract(id: $id, client: $client, region: $region, advertiser: $advertiser, countFilter: $countFilter, monthCount: $monthCount, costPrice: $costPrice, debtOnMonth: $debtOnMonth, priceAmount: $priceAmount, creator: $creator, paidMonths: $paidMonths, paidAmount: $paidAmount, setupDate: $setupDate, isConfirm: $isConfirm, confirmDate: $confirmDate, closed: $closed, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contract &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.advertiser, advertiser) ||
                other.advertiser == advertiser) &&
            (identical(other.countFilter, countFilter) ||
                other.countFilter == countFilter) &&
            (identical(other.monthCount, monthCount) ||
                other.monthCount == monthCount) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.debtOnMonth, debtOnMonth) ||
                other.debtOnMonth == debtOnMonth) &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.paidMonths, paidMonths) ||
                other.paidMonths == paidMonths) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.setupDate, setupDate) ||
                other.setupDate == setupDate) &&
            (identical(other.isConfirm, isConfirm) ||
                other.isConfirm == isConfirm) &&
            (identical(other.confirmDate, confirmDate) ||
                other.confirmDate == confirmDate) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      client,
      region,
      advertiser,
      countFilter,
      monthCount,
      costPrice,
      debtOnMonth,
      priceAmount,
      creator,
      paidMonths,
      paidAmount,
      setupDate,
      isConfirm,
      confirmDate,
      closed,
      createdAt,
      modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractCopyWith<_$_Contract> get copyWith =>
      __$$_ContractCopyWithImpl<_$_Contract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractToJson(
      this,
    );
  }
}

abstract class _Contract implements Contract {
  const factory _Contract(
          {required final int id,
          required final Client client,
          required final Region region,
          required final Employee advertiser,
          @JsonKey(name: "count_filter") required final int countFilter,
          @JsonKey(name: "month_count") required final int monthCount,
          @JsonKey(name: "cost_price") required final int costPrice,
          @JsonKey(name: "debt_on_month") required final int debtOnMonth,
          @JsonKey(name: "price_amount") required final int priceAmount,
          required final User creator,
          @JsonKey(name: "paid_months") required final int paidMonths,
          @JsonKey(name: "paid_amount") required final int paidAmount,
          @JsonKey(name: "setup_date") required final DateTime setupDate,
          @JsonKey(name: "is_confirm") required final bool isConfirm,
          @JsonKey(name: "confirm_date") required final DateTime? confirmDate,
          required final bool closed,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_Contract;

  factory _Contract.fromJson(Map<String, dynamic> json) = _$_Contract.fromJson;

  @override
  int get id;
  @override
  Client get client;
  @override
  Region get region;
  @override
  Employee get advertiser;
  @override
  @JsonKey(name: "count_filter")
  int get countFilter;
  @override
  @JsonKey(name: "month_count")
  int get monthCount;
  @override
  @JsonKey(name: "cost_price")
  int get costPrice;
  @override
  @JsonKey(name: "debt_on_month")
  int get debtOnMonth;
  @override
  @JsonKey(name: "price_amount")
  int get priceAmount;
  @override
  User get creator;
  @override
  @JsonKey(name: "paid_months")
  int get paidMonths;
  @override
  @JsonKey(name: "paid_amount")
  int get paidAmount;
  @override
  @JsonKey(name: "setup_date")
  DateTime get setupDate;
  @override
  @JsonKey(name: "is_confirm")
  bool get isConfirm;
  @override
  @JsonKey(name: "confirm_date")
  DateTime? get confirmDate;
  @override
  bool get closed;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContractCopyWith<_$_Contract> get copyWith =>
      throw _privateConstructorUsedError;
}
