import 'package:fhir/r4.dart';

extension CodeableConceptUtils on CodeableConcept {
  String? get title => text ?? coding?.firstOrNull?.title;
}

extension CodingUtils on Coding {
  String? get title => display ?? code?.value ?? system?.value?.toString();
}

extension FhirDateUtils on FhirDate {
  DateTime get asDateTime => DateTime(year, month, day);
}

extension FhirTimeUtils on FhirTime {
  DateTime get asDateTime =>
      DateTime.now().copyWith(hour: hour, minute: minute);
}

extension FhirDateTimeUtils on FhirDateTime {
  DateTime get asDateTime =>
      DateTime(year, month, day, hour, minute, second, millisecond);
}

extension QuestionnaireItemUtils on QuestionnaireItem {
  String? get title => text ?? code?.firstOrNull?.title;
}

extension QuestionnaireUtils on Questionnaire {
  FhirCanonical get asFhirCanonical =>
      FhirCanonical('${R4ResourceType.Questionnaire.name}/$fhirId');
}
