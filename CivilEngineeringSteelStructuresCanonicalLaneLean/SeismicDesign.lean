import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SeismicPackage where
  seismicZone : Type u
  ductilityDemand : Prop
  overstrengthFactor : Prop
  capacityDesignPrinciple : Prop
  energyDissipation : Prop
  driftLimit : Prop

structure SeismicEvidence (S : SeismicPackage) where
  ductilityDemandClosed : S.ductilityDemand
  overstrengthFactorClosed : S.overstrengthFactor
  capacityDesignPrincipleClosed : S.capacityDesignPrinciple
  energyDissipationClosed : S.energyDissipation
  driftLimitClosed : S.driftLimit

def SeismicClosed (S : SeismicPackage) : Prop :=
  S.ductilityDemand ∧ S.overstrengthFactor ∧ S.capacityDesignPrinciple ∧ S.energyDissipation ∧ S.driftLimit

theorem seismic_closed_from_evidence (S : SeismicPackage) (E : SeismicEvidence S) : SeismicClosed S := by
  exact And.intro E.ductilityDemandClosed (And.intro E.overstrengthFactorClosed (And.intro E.capacityDesignPrincipleClosed (And.intro E.energyDissipationClosed E.driftLimitClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse