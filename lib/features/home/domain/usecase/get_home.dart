import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import 'package:slash_task/features/home/domain/repositories/home_repository.dart';

class GetHome {
  final HomeRepository repository;
  GetHome({required this.repository});
  
  HomeRepository call() {
    return repository.getHomeData();
  }
}
