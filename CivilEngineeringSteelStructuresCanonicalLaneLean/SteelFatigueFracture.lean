import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure FatigueFracturePackage where
  stressRange : Prop
  cycleCount : Prop
  sNCurve : Prop
  fatigueLimit : Prop
  cumulativeDamage : Prop
  fractureToughness : Prop
  crackGrowthRate : Prop
  weldFatigueClass : Prop

structure FatigueFractureEvidence (F : FatigueFracturePackage) where
  stressRangeClosed : F.stressRange
  cycleCountClosed : F.cycleCount
  sNCurveClosed : F.sNCurve
  fatigueLimitClosed : F.fatigueLimit
  cumulativeDamageClosed : F.cumulativeDamage
  fractureToughnessClosed : F.fractureToughness
  crackGrowthRateClosed : F.crackGrowthRate
  weldFatigueClassClosed : F.weldFatigueClass

def FatigueFractureClosed (F : FatigueFracturePackage) : Prop :=
  F.stressRange ∧ F.cycleCount ∧ F.sNCurve ∧ F.fatigueLimit ∧
  F.cumulativeDamage ∧ F.fractureToughness ∧ F.crackGrowthRate ∧ F.weldFatigueClass

theorem fatigue_fracture_closed_from_evidence (F : FatigueFracturePackage) (E : FatigueFractureEvidence F) :
    FatigueFractureClosed F := by
  exact And.intro E.stressRangeClosed
    (And.intro E.cycleCountClosed
      (And.intro E.sNCurveClosed
        (And.intro E.fatigueLimitClosed
          (And.intro E.cumulativeDamageClosed
            (And.intro E.fractureToughnessClosed
              (And.intro E.crackGrowthRateClosed E.weldFatigueClassClosed))))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse