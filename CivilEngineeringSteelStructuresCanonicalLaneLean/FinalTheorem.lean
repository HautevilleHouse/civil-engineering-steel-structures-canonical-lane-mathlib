import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

def ConstrainedSteelClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_steel_endgame (A : AdmissibleClass) :
    ConstrainedSteelClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
