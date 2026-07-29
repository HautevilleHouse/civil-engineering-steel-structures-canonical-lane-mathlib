import CivilEngineeringSteelStructuresCanonicalLaneLean.SteelMaterialAdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure CrossSectionStabilityPackage where
  widthThicknessRatio : ℝ
  slenderElementDetected : Bool
  localBucklingResistance : ℝ
  effectiveArea : ℝ
  stableUnderLoad : Prop
  flangeCripplingPrevented : Prop

structure CrossSectionStabilityEvidence (S : CrossSectionStabilityPackage) where
  stableUnderLoadClosed : S.stableUnderLoad
  flangeCripplingPreventedClosed : S.flangeCripplingPrevented

def CrossSectionStabilityClosed (S : CrossSectionStabilityPackage) : Prop :=
  S.stableUnderLoad ∧ S.flangeCripplingPrevented

theorem cross_section_stability_closed_from_evidence (S : CrossSectionStabilityPackage) (E : CrossSectionStabilityEvidence S) : CrossSectionStabilityClosed S := by
  exact And.intro E.stableUnderLoadClosed E.flangeCripplingPreventedClosed

end HautevilleHouse
end CivilEngineeringSteelStructuresCanonicalLaneLean