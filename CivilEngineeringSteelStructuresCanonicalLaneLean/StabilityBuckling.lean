import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure StabilityBucklingPackage where
  eulerCriticalLoad : ℝ → ℝ
  tangentModulus : Prop
  reducedModulus : Prop
  columnBucklingCurves : Type
  lateralTorsionalBuckling : Prop
  localBucklingPlateSlenderness : Prop
  interactionBuckling : Prop

structure StabilityBucklingEvidence (S : StabilityBucklingPackage) where
  tangentModulusClosed : S.tangentModulus
  reducedModulusClosed : S.reducedModulus
  lateralTorsionalBucklingClosed : S.lateralTorsionalBuckling
  localBucklingPlateSlendernessClosed : S.localBucklingPlateSlenderness
  interactionBucklingClosed : S.interactionBuckling

def StabilityBucklingClosed (S : StabilityBucklingPackage) : Prop :=
  S.tangentModulus ∧ S.reducedModulus ∧ S.lateralTorsionalBuckling ∧
  S.localBucklingPlateSlenderness ∧ S.interactionBuckling

theorem stability_buckling_closed_from_evidence (S : StabilityBucklingPackage)
    (Ev : StabilityBucklingEvidence S) : StabilityBucklingClosed S := by
  exact And.intro Ev.tangentModulusClosed
    (And.intro Ev.reducedModulusClosed
      (And.intro Ev.lateralTorsionalBucklingClosed
        (And.intro Ev.localBucklingPlateSlendernessClosed Ev.interactionBucklingClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse