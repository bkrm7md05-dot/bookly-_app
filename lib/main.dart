import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Core/utils/api_service.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Core/utils/service_locator.dart';
import 'package:project/Features/home/data/repos/home_repo.dart';
import 'package:project/Features/home/data/repos/homo_repo_impl.dart';
import 'package:project/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:project/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: 
      [
        BlocProvider(create: (context) => FeaturedBooksCubit(homeRepo: getIt.get<HomoRepoImpl>())),
        
        BlocProvider(create: (context) => NewestBooksCubit(homeRepo: getIt.get<HomoRepoImpl>()),),


      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),
      
          textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Montserrat'),
        ),
      
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
