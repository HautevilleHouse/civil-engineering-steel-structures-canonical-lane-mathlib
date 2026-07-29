import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure BucklingPackage where
  memberType : Type u
  elasticBucklingLoad : Prop
  inelasticBucklingReduction : Prop
  slendernessRatio : Prop
  residualStressEffect : Prop
  imperfectionSensitivity : Prop

structure BucklingEvidence (B : BucklingPackage) where
  elasticBucklingLoadClosed : B.elasticBucklingLoad
  inelasticBucklingReductionClosed : B.inelasticBucklingReduction
  slendernessRatioClosed : B.slendernessRatio
  residualStressEffectClosed : B.residualStressEffect
  imperfectionSensitivityClosed : B.imperfectionSensitivity

def BucklingClosed (B : BucklingPackage) : Prop :=
  B.elasticBucklingLoad ∧ B.inelasticBucklingReduction ∧ B.slendernessRatio ∧ B.residualStressEffect ∧ B.imperfectionSensitivity

theorem buckling_closed_from_evidence (B : BucklingPackage) (E : BucklingEvidence B) : BucklingClosed B := by
  exact And.intro E.elasticBucklingLoadClosed (And.intro E.inelasticBucklingReductionClosed (And.intro E.slendernessRatioClosed (And.intro E.residualStressEffectClosed E.imperfectionSensitivityClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse