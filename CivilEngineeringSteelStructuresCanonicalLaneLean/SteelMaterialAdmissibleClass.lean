import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelGrade where
  nominalYield : ℝ
  nominalTensile : ℝ
  elasticModulus : ℝ
  gradeDesignation : String
  yieldCohesion : ℝ

definition couplingBound : ℝ := 1.0

structure SteelAdmittedObject where
  grade : SteelGrade
  sectionClass : String
  compactness : Prop
  plasticDesignCapacity : Prop
  crossSectionStable : Prop
  conclusion : crossSectionStable ∧ plasticDesignCapacity

structure AdmissibleClass where
  object : SteelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SteelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SteelWitnessClosed (O : SteelAdmittedObject) : Prop :=
  O.crossSectionStable ∧ O.plasticDesignCapacity

end HautevilleHouse
end CivilEngineeringSteelStructuresCanonicalLaneLean