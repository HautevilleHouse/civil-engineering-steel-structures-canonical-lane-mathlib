import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure BeamBucklingPackage where
  slendernessRatio : Prop
  elasticBucklingLoad : Prop
  inelasticBucklingCapacity : Prop
  lateralTorsionalBuckling : Prop
  distortionalBuckling : Prop
  imperfectionFactor : Prop
  residualStressEffect : Prop

structure BeamBucklingEvidence (B : BeamBucklingPackage) where
  slendernessRatioClosed : B.slendernessRatio
  elasticBucklingLoadClosed : B.elasticBucklingLoad
  inelasticBucklingCapacityClosed : B.inelasticBucklingCapacity
  lateralTorsionalBucklingClosed : B.lateralTorsionalBuckling
  distortionalBucklingClosed : B.distortionalBuckling
  imperfectionFactorClosed : B.imperfectionFactor
  residualStressEffectClosed : B.residualStressEffect

def BeamBucklingClosed (B : BeamBucklingPackage) : Prop :=
  B.slendernessRatio ∧ B.elasticBucklingLoad ∧ B.inelasticBucklingCapacity ∧
  B.lateralTorsionalBuckling ∧ B.distortionalBuckling ∧ B.imperfectionFactor ∧
  B.residualStressEffect

theorem beam_buckling_closed_from_evidence (B : BeamBucklingPackage) (E : BeamBucklingEvidence B) :
    BeamBucklingClosed B := by
  exact And.intro E.slendernessRatioClosed
    (And.intro E.elasticBucklingLoadClosed
      (And.intro E.inelasticBucklingCapacityClosed
        (And.intro E.lateralTorsionalBucklingClosed
          (And.intro E.distortionalBucklingClosed
            (And.intro E.imperfectionFactorClosed E.residualStressEffectClosed)))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse