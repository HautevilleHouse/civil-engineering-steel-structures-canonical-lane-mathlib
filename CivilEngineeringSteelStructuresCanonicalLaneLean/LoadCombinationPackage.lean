import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure LoadCombination where
  deadLoad : Prop
  liveLoad : Prop
  windLoad : Prop
  seismicLoad : Prop
  loadFactors : Prop

def LoadCombinationPackage (L : LoadCombination) : Prop :=
  L.deadLoad ∧ L.liveLoad ∧ L.windLoad ∧ L.seismicLoad ∧ L.loadFactors

structure StabilityCheck where
  swayImperfection : Prop
  secondOrderEffects : Prop
  bucklingCheck : Prop

def StabilityPackage (S : StabilityCheck) : Prop :=
  S.swayImperfection ∧ S.secondOrderEffects ∧ S.bucklingCheck

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
