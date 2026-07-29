import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure PlasticDesignPackage where
  plasticMoment : ℝ → ℝ
  collapseMechanism : Type
  virtualWorkEquation : Prop
  plasticHingeAnalysis : Prop
  redistributionCapacity : Prop
  designStrengthFactor : Prop
  plasticLimitState : Prop

structure PlasticDesignEvidence (P : PlasticDesignPackage) where
  virtualWorkEquationClosed : P.virtualWorkEquation
  plasticHingeAnalysisClosed : P.plasticHingeAnalysis
  redistributionCapacityClosed : P.redistributionCapacity
  designStrengthFactorClosed : P.designStrengthFactor
  plasticLimitStateClosed : P.plasticLimitState

def PlasticDesignClosed (P : PlasticDesignPackage) : Prop :=
  P.virtualWorkEquation ∧ P.plasticHingeAnalysis ∧ P.redistributionCapacity ∧
  P.designStrengthFactor ∧ P.plasticLimitState

theorem plastic_design_closed_from_evidence (P : PlasticDesignPackage)
    (Ev : PlasticDesignEvidence P) : PlasticDesignClosed P := by
  exact And.intro Ev.virtualWorkEquationClosed
    (And.intro Ev.plasticHingeAnalysisClosed
      (And.intro Ev.redistributionCapacityClosed
        (And.intro Ev.designStrengthFactorClosed Ev.plasticLimitStateClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse