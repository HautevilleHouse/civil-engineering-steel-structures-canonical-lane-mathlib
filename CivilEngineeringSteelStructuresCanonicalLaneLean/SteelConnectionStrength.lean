import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure ConnectionStrengthPackage where
  boltShearCapacity : Prop
  boltTensionCapacity : Prop
  weldStrength : Prop
  plateBearingCapacity : Prop
  blockShearFailure : Prop
  pryingActionEffect : Prop
  slipCriticalConnection : Prop

structure ConnectionStrengthEvidence (C : ConnectionStrengthPackage) where
  boltShearCapacityClosed : C.boltShearCapacity
  boltTensionCapacityClosed : C.boltTensionCapacity
  weldStrengthClosed : C.weldStrength
  plateBearingCapacityClosed : C.plateBearingCapacity
  blockShearFailureClosed : C.blockShearFailure
  pryingActionEffectClosed : C.pryingActionEffect
  slipCriticalConnectionClosed : C.slipCriticalConnection

def ConnectionStrengthClosed (C : ConnectionStrengthPackage) : Prop :=
  C.boltShearCapacity ∧ C.boltTensionCapacity ∧ C.weldStrength ∧
  C.plateBearingCapacity ∧ C.blockShearFailure ∧ C.pryingActionEffect ∧
  C.slipCriticalConnection

theorem connection_strength_closed_from_evidence (C : ConnectionStrengthPackage) (E : ConnectionStrengthEvidence C) :
    ConnectionStrengthClosed C := by
  exact And.intro E.boltShearCapacityClosed
    (And.intro E.boltTensionCapacityClosed
      (And.intro E.weldStrengthClosed
        (And.intro E.plateBearingCapacityClosed
          (And.intro E.blockShearFailureClosed
            (And.intro E.pryingActionEffectClosed E.slipCriticalConnectionClosed)))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse