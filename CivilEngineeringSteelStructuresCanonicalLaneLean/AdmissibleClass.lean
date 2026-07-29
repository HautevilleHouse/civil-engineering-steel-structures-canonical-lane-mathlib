import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure AdmissibleClass where
  object : SteelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SteelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
