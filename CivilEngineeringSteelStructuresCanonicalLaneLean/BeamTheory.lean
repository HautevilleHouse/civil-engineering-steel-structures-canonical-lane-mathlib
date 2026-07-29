import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure BeamBendingPackage where
  crossSection : Type u
  momentOfInertia : Prop
  elasticSectionModulus : Prop
  plasticSectionModulus : Prop
  bendingMomentCapacity : Prop
  curvatureDuctility : Prop

structure BeamBendingEvidence (B : BeamBendingPackage) where
  momentOfInertiaClosed : B.momentOfInertia
  elasticSectionModulusClosed : B.elasticSectionModulus
  plasticSectionModulusClosed : B.plasticSectionModulus
  bendingMomentCapacityClosed : B.bendingMomentCapacity
  curvatureDuctilityClosed : B.curvatureDuctility

def BeamBendingClosed (B : BeamBendingPackage) : Prop :=
  B.momentOfInertia ∧ B.elasticSectionModulus ∧ B.plasticSectionModulus ∧ B.bendingMomentCapacity ∧ B.curvatureDuctility

theorem beam_bending_closed_from_evidence (B : BeamBendingPackage) (E : BeamBendingEvidence B) : BeamBendingClosed B := by
  exact And.intro E.momentOfInertiaClosed (And.intro E.elasticSectionModulusClosed (And.intro E.plasticSectionModulusClosed (And.intro E.bendingMomentCapacityClosed E.curvatureDuctilityClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse