import CivilEngineeringSteelStructuresCanonicalLaneLean.SteelMaterialAdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure PlasticDesignPackage where
  plasticMoment : ℝ
  momentRedistributionFactor : ℝ
  sectionClass : String
  designMethod : String
  availableRotationCapacity : Prop
  localBucklingPrevented : Prop

structure PlasticDesignEvidence (P : PlasticDesignPackage) where
  availableRotationCapacityClosed : P.availableRotationCapacity
  localBucklingPreventedClosed : P.localBucklingPrevented

def PlasticDesignClosed (P : PlasticDesignPackage) : Prop :=
  P.availableRotationCapacity ∧ P.localBucklingPrevented

theorem plastic_design_closed_from_evidence (P : PlasticDesignPackage) (E : PlasticDesignEvidence P) : PlasticDesignClosed P := by
  exact And.intro E.availableRotationCapacityClosed E.localBucklingPreventedClosed

end HautevilleHouse
end CivilEngineeringSteelStructuresCanonicalLaneLean