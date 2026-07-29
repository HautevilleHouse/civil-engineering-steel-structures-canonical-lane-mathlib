import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure BeamColumnElementPackage where
  crossSection : Type
  area : ℝ
  momentOfInertia : ℝ
  length : ℝ
  axialRigidity : Prop
  flexuralRigidity : Prop
  elementStiffnessMatrix : Prop
  geometricStiffness : Prop
  yieldInteractionSurface : Prop

structure BeamColumnElementEvidence (E : BeamColumnElementPackage) where
  axialRigidityClosed : E.axialRigidity
  flexuralRigidityClosed : E.flexuralRigidity
  elementStiffnessMatrixClosed : E.elementStiffnessMatrix
  geometricStiffnessClosed : E.geometricStiffness
  yieldInteractionSurfaceClosed : E.yieldInteractionSurface

def BeamColumnElementClosed (E : BeamColumnElementPackage) : Prop :=
  E.axialRigidity ∧ E.flexuralRigidity ∧ E.elementStiffnessMatrix ∧
  E.geometricStiffness ∧ E.yieldInteractionSurface

theorem beam_column_element_closed_from_evidence (E : BeamColumnElementPackage)
    (Ev : BeamColumnElementEvidence E) : BeamColumnElementClosed E := by
  exact And.intro Ev.axialRigidityClosed
    (And.intro Ev.flexuralRigidityClosed
      (And.intro Ev.elementStiffnessMatrixClosed
        (And.intro Ev.geometricStiffnessClosed Ev.yieldInteractionSurfaceClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse