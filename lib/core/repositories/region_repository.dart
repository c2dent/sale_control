import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/daos/region_dao.dart';
import 'package:injectable/injectable.dart';

abstract class RegionRepository {
  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getRegions(Map<String, String> params);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getAllRegionsDb();
}

@Singleton(as: RegionRepository)
class RegionRepositoryImpl extends RegionRepository {
  final RegionDao regionDao;

  RegionRepositoryImpl(this.regionDao);

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getRegions(Map<String, String> params) async {
    return regionDao.getRegionsByParams(params);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getAllRegionsDb() {
    return regionDao.getAllRegions();
  }
}