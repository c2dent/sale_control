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
  Locality get locality => throw _privateConstructorUsedError;
  Employee get advertiser => throw _privateConstructorUsedError;
  @JsonKey(name: "task_master")
  Employee get taskMaster => throw _privateConstructorUsedError;
  @JsonKey(name: "count_filter")
  int get countFilter => throw _privateConstructorUsedError;
  @JsonKey(name: "due_date_on_month")
  int get dueDateOnMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "cost_price")
  int get costPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sum_contract")
  int get sumContract => throw _privateConstructorUsedError;
  @JsonKey(name: "start_contribution")
  int get startContribution => throw _privateConstructorUsedError;
  @JsonKey(name: "setup_date")
  DateTime get setupDate => throw _privateConstructorUsedError;
  @JsonKey(name: "remaining_months")
  int get remainingMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "remaining_sum")
  int get remainingSum => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  @JsonKey(name: "is_confirm")
  bool get isConfirm => throw _privateConstructorUsedError;
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
      Locality locality,
      Employee advertiser,
      @JsonKey(name: "task_master") Employee taskMaster,
      @JsonKey(name: "count_filter") int countFilter,
      @JsonKey(name: "due_date_on_month") int dueDateOnMonth,
      @JsonKey(name: "cost_price") int costPrice,
      @JsonKey(name: "sum_contract") int sumContract,
      @JsonKey(name: "start_contribution") int startContribution,
      @JsonKey(name: "setup_date") DateTime setupDate,
      @JsonKey(name: "remaining_months") int remainingMonths,
      @JsonKey(name: "remaining_sum") int remainingSum,
      bool closed,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ClientCopyWith<$Res> get client;
  $LocalityCopyWith<$Res> get locality;
  $EmployeeCopyWith<$Res> get advertiser;
  $EmployeeCopyWith<$Res> get taskMaster;
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
    Object? locality = null,
    Object? advertiser = null,
    Object? taskMaster = null,
    Object? countFilter = null,
    Object? dueDateOnMonth = null,
    Object? costPrice = null,
    Object? sumContract = null,
    Object? startContribution = null,
    Object? setupDate = null,
    Object? remainingMonths = null,
    Object? remainingSum = null,
    Object? closed = null,
    Object? isConfirm = null,
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
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as Locality,
      advertiser: null == advertiser
          ? _value.advertiser
          : advertiser // ignore: cast_nullable_to_non_nullable
              as Employee,
      taskMaster: null == taskMaster
          ? _value.taskMaster
          : taskMaster // ignore: cast_nullable_to_non_nullable
              as Employee,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as int,
      dueDateOnMonth: null == dueDateOnMonth
          ? _value.dueDateOnMonth
          : dueDateOnMonth // ignore: cast_nullable_to_non_nullable
              as int,
      costPrice: null == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sumContract: null == sumContract
          ? _value.sumContract
          : sumContract // ignore: cast_nullable_to_non_nullable
              as int,
      startContribution: null == startContribution
          ? _value.startContribution
          : startContribution // ignore: cast_nullable_to_non_nullable
              as int,
      setupDate: null == setupDate
          ? _value.setupDate
          : setupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remainingMonths: null == remainingMonths
          ? _value.remainingMonths
          : remainingMonths // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSum: null == remainingSum
          ? _value.remainingSum
          : remainingSum // ignore: cast_nullable_to_non_nullable
              as int,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
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
  $LocalityCopyWith<$Res> get locality {
    return $LocalityCopyWith<$Res>(_value.locality, (value) {
      return _then(_value.copyWith(locality: value) as $Val);
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
  $EmployeeCopyWith<$Res> get taskMaster {
    return $EmployeeCopyWith<$Res>(_value.taskMaster, (value) {
      return _then(_value.copyWith(taskMaster: value) as $Val);
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
      Locality locality,
      Employee advertiser,
      @JsonKey(name: "task_master") Employee taskMaster,
      @JsonKey(name: "count_filter") int countFilter,
      @JsonKey(name: "due_date_on_month") int dueDateOnMonth,
      @JsonKey(name: "cost_price") int costPrice,
      @JsonKey(name: "sum_contract") int sumContract,
      @JsonKey(name: "start_contribution") int startContribution,
      @JsonKey(name: "setup_date") DateTime setupDate,
      @JsonKey(name: "remaining_months") int remainingMonths,
      @JsonKey(name: "remaining_sum") int remainingSum,
      bool closed,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $LocalityCopyWith<$Res> get locality;
  @override
  $EmployeeCopyWith<$Res> get advertiser;
  @override
  $EmployeeCopyWith<$Res> get taskMaster;
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
    Object? locality = null,
    Object? advertiser = null,
    Object? taskMaster = null,
    Object? countFilter = null,
    Object? dueDateOnMonth = null,
    Object? costPrice = null,
    Object? sumContract = null,
    Object? startContribution = null,
    Object? setupDate = null,
    Object? remainingMonths = null,
    Object? remainingSum = null,
    Object? closed = null,
    Object? isConfirm = null,
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
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as Locality,
      advertiser: null == advertiser
          ? _value.advertiser
          : advertiser // ignore: cast_nullable_to_non_nullable
              as Employee,
      taskMaster: null == taskMaster
          ? _value.taskMaster
          : taskMaster // ignore: cast_nullable_to_non_nullable
              as Employee,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as int,
      dueDateOnMonth: null == dueDateOnMonth
          ? _value.dueDateOnMonth
          : dueDateOnMonth // ignore: cast_nullable_to_non_nullable
              as int,
      costPrice: null == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sumContract: null == sumContract
          ? _value.sumContract
          : sumContract // ignore: cast_nullable_to_non_nullable
              as int,
      startContribution: null == startContribution
          ? _value.startContribution
          : startContribution // ignore: cast_nullable_to_non_nullable
              as int,
      setupDate: null == setupDate
          ? _value.setupDate
          : setupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remainingMonths: null == remainingMonths
          ? _value.remainingMonths
          : remainingMonths // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSum: null == remainingSum
          ? _value.remainingSum
          : remainingSum // ignore: cast_nullable_to_non_nullable
              as int,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
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
      required this.locality,
      required this.advertiser,
      @JsonKey(name: "task_master") required this.taskMaster,
      @JsonKey(name: "count_filter") required this.countFilter,
      @JsonKey(name: "due_date_on_month") required this.dueDateOnMonth,
      @JsonKey(name: "cost_price") required this.costPrice,
      @JsonKey(name: "sum_contract") required this.sumContract,
      @JsonKey(name: "start_contribution") required this.startContribution,
      @JsonKey(name: "setup_date") required this.setupDate,
      @JsonKey(name: "remaining_months") required this.remainingMonths,
      @JsonKey(name: "remaining_sum") required this.remainingSum,
      required this.closed,
      @JsonKey(name: "is_confirm") required this.isConfirm,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Contract.fromJson(Map<String, dynamic> json) =>
      _$$_ContractFromJson(json);

  @override
  final int id;
  @override
  final Client client;
  @override
  final Locality locality;
  @override
  final Employee advertiser;
  @override
  @JsonKey(name: "task_master")
  final Employee taskMaster;
  @override
  @JsonKey(name: "count_filter")
  final int countFilter;
  @override
  @JsonKey(name: "due_date_on_month")
  final int dueDateOnMonth;
  @override
  @JsonKey(name: "cost_price")
  final int costPrice;
  @override
  @JsonKey(name: "sum_contract")
  final int sumContract;
  @override
  @JsonKey(name: "start_contribution")
  final int startContribution;
  @override
  @JsonKey(name: "setup_date")
  final DateTime setupDate;
  @override
  @JsonKey(name: "remaining_months")
  final int remainingMonths;
  @override
  @JsonKey(name: "remaining_sum")
  final int remainingSum;
  @override
  final bool closed;
  @override
  @JsonKey(name: "is_confirm")
  final bool isConfirm;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Contract(id: $id, client: $client, locality: $locality, advertiser: $advertiser, taskMaster: $taskMaster, countFilter: $countFilter, dueDateOnMonth: $dueDateOnMonth, costPrice: $costPrice, sumContract: $sumContract, startContribution: $startContribution, setupDate: $setupDate, remainingMonths: $remainingMonths, remainingSum: $remainingSum, closed: $closed, isConfirm: $isConfirm, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contract &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.advertiser, advertiser) ||
                other.advertiser == advertiser) &&
            (identical(other.taskMaster, taskMaster) ||
                other.taskMaster == taskMaster) &&
            (identical(other.countFilter, countFilter) ||
                other.countFilter == countFilter) &&
            (identical(other.dueDateOnMonth, dueDateOnMonth) ||
                other.dueDateOnMonth == dueDateOnMonth) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.sumContract, sumContract) ||
                other.sumContract == sumContract) &&
            (identical(other.startContribution, startContribution) ||
                other.startContribution == startContribution) &&
            (identical(other.setupDate, setupDate) ||
                other.setupDate == setupDate) &&
            (identical(other.remainingMonths, remainingMonths) ||
                other.remainingMonths == remainingMonths) &&
            (identical(other.remainingSum, remainingSum) ||
                other.remainingSum == remainingSum) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.isConfirm, isConfirm) ||
                other.isConfirm == isConfirm) &&
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
      locality,
      advertiser,
      taskMaster,
      countFilter,
      dueDateOnMonth,
      costPrice,
      sumContract,
      startContribution,
      setupDate,
      remainingMonths,
      remainingSum,
      closed,
      isConfirm,
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
      required final Locality locality,
      required final Employee advertiser,
      @JsonKey(name: "task_master")
          required final Employee taskMaster,
      @JsonKey(name: "count_filter")
          required final int countFilter,
      @JsonKey(name: "due_date_on_month")
          required final int dueDateOnMonth,
      @JsonKey(name: "cost_price")
          required final int costPrice,
      @JsonKey(name: "sum_contract")
          required final int sumContract,
      @JsonKey(name: "start_contribution")
          required final int startContribution,
      @JsonKey(name: "setup_date")
          required final DateTime setupDate,
      @JsonKey(name: "remaining_months")
          required final int remainingMonths,
      @JsonKey(name: "remaining_sum")
          required final int remainingSum,
      required final bool closed,
      @JsonKey(name: "is_confirm")
          required final bool isConfirm,
      @JsonKey(name: "created_at")
          required final DateTime createdAt,
      @JsonKey(name: "modified_at")
          required final DateTime modifiedAt}) = _$_Contract;

  factory _Contract.fromJson(Map<String, dynamic> json) = _$_Contract.fromJson;

  @override
  int get id;
  @override
  Client get client;
  @override
  Locality get locality;
  @override
  Employee get advertiser;
  @override
  @JsonKey(name: "task_master")
  Employee get taskMaster;
  @override
  @JsonKey(name: "count_filter")
  int get countFilter;
  @override
  @JsonKey(name: "due_date_on_month")
  int get dueDateOnMonth;
  @override
  @JsonKey(name: "cost_price")
  int get costPrice;
  @override
  @JsonKey(name: "sum_contract")
  int get sumContract;
  @override
  @JsonKey(name: "start_contribution")
  int get startContribution;
  @override
  @JsonKey(name: "setup_date")
  DateTime get setupDate;
  @override
  @JsonKey(name: "remaining_months")
  int get remainingMonths;
  @override
  @JsonKey(name: "remaining_sum")
  int get remainingSum;
  @override
  bool get closed;
  @override
  @JsonKey(name: "is_confirm")
  bool get isConfirm;
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
