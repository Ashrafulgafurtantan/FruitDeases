import 'Disease.dart';

class DiseasesList{
 final String stage;
 List <Disease> wholeDiseasesList;

 DiseasesList({
  this.stage,this.wholeDiseasesList
 });
}

List<DiseasesList> diseasesLists=[
 DiseasesList(
  stage: 'Seeding',
  wholeDiseasesList: mango,
 ),
 DiseasesList(
  stage: 'Vegetative',
  wholeDiseasesList: mango,
 ),
 DiseasesList(
  stage: 'Flowering',
  wholeDiseasesList: mango,
 ),
 DiseasesList(
  stage: 'Fruiting',
  wholeDiseasesList: mango,
 ),
 DiseasesList(
  stage: 'Harvesting',
  wholeDiseasesList: mango,
 ),


];