import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure FrameStabilityPackage where
  secondOrderAnalysis : Prop
  pDeltaEffect : Prop
  swayImperfection : Prop
  notionalLoad : Prop
  storeyStabilityFactor : Prop
  bucklingLengthFactor : Prop
  momentMagnification : Prop
  plasticHingeFormation : Prop

structure FrameStabilityEvidence (F : FrameStabilityPackage) where
  secondOrderAnalysisClosed : F.secondOrderAnalysis
  pDeltaEffectClosed : F.pDeltaEffect
  swayImperfectionClosed : F.swayImperfection
  notionalLoadClosed : F.notionalLoad
  storeyStabilityFactorClosed : F.storeyStabilityFactor
  bucklingLengthFactorClosed : F.bucklingLengthFactor
  momentMagnificationClosed : F.momentMagnification
  plasticHingeFormationClosed : F.plasticHingeFormation

def FrameStabilityClosed (F : FrameStabilityPackage) : Prop :=
  F.secondOrderAnalysis ∧ F.pDeltaEffect ∧ F.swayImperfection ∧
  F.notionalLoad ∧ F.storeyStabilityFactor ∧ F.bucklingLengthFactor ∧
  F.momentMagnification ∧ F.plasticHingeFormation

theorem frame_stability_closed_from_evidence (F : FrameStabilityPackage) (E : FrameStabilityEvidence F) :
    FrameStabilityClosed F := by
  exact And.intro E.secondOrderAnalysisClosed
    (And.intro E.pDeltaEffectClosed
      (And.intro E.swayImperfectionClosed
        (And.intro E.notionalLoadClosed
          (And.intro E.storeyStabilityFactorClosed
            (And.intro E.bucklingLengthFactorClosed
              (And.intro E.momentMagnificationClosed E.plasticHingeFormationClosed))))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse