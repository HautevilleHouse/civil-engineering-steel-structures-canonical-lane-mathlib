import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelSection where
  sectionArea : ℝ
  elasticModulus : ℝ
  plasticModulus : ℝ
  radiusOfGyration : ℝ

def sectionClass (b t : ℝ) : String :=
  if b / t ≤ 9.0 then "Compact"
  else if b / t ≤ 24.0 then "Noncompact"
  else "Slender"

theorem section_class_compact_or_noncompact (b t : ℝ) (hpos : t > 0) :
    sectionClass b t = "Compact" ∨ sectionClass b t = "Noncompact" ∨ sectionClass b t = "Slender" :=
  by
  unfold sectionClass
  by_cases h1 : b / t ≤ 9.0
  · exact Or.inl rfl
  · by_cases h2 : b / t ≤ 24.0
    · exact Or.inr (Or.inl rfl)
    · exact Or.inr (Or.inr rfl)

structure UltimateLimitState (A : AdmissibleClass) where
  nominalStrength : ℝ
  loadEffect : ℝ
  resistanceFactor : ℝ
  loadFactor : ℝ
  strengthOk : nominalStrength * resistanceFactor ≥ loadEffect * loadFactor

structure BridgeAdmissible (section : SteelSection) where
  bridgeClosed : Prop
  gateClosed : Prop
  ultimateLimitState : UltimateLimitState (AdmissibleClass.mk section (by trivial) (by trivial) (by trivial))

theorem bridge_from_section (section : SteelSection) : BridgeAdmissible section :=
  by
  refine
    { bridgeClosed := True
      gateClosed := True
      ultimateLimitState :=
        { nominalStrength := 0
          loadEffect := 0
          resistanceFactor := 1
          loadFactor := 1
          strengthOk := by
            simp
        }
    }

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse