import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/Core/utils/api_service.dart';
import 'package:project/Features/home/data/repos/homo_repo_impl.dart';

//! Dont make every second an instance just make it one time like this 
// Dependency principle [SOLI//!D ]


final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomoRepoImpl>(
    HomoRepoImpl(apiService: getIt.get<ApiService>(),
    ),
  );
}
