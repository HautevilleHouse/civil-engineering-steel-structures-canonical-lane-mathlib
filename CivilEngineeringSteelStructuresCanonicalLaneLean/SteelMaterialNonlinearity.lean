import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelMaterialPackage where
  yieldStrength : Prop
  elasticModulus : Prop
  hardeningModulus : Prop
  nonlinearStressStrain : Prop
  residualStressDistribution : Prop
  cyclicSoftening : Prop

structure SteelMaterialEvidence (P : SteelMaterialPackage) where
  yieldStrengthClosed : P.yieldStrength
  elasticModulusClosed : P.elasticModulus
  hardeningModulusClosed : P.hardeningModulus
  nonlinearStressStrainClosed : P.nonlinearStressStrain
  residualStressDistributionClosed : P.residualStressDistribution
  cyclicSofteningClosed : P.cyclicSoftening

def SteelMaterialClosed (P : SteelMaterialPackage) : Prop :=
  P.yieldStrength ∧ P.elasticModulus ∧ P.hardeningModulus ∧
  P.nonlinearStressStrain ∧ P.residualStressDistribution ∧ P.cyclicSoftening

theorem steel_material_closed_from_evidence (P : SteelMaterialPackage) (E : SteelMaterialEvidence P) :
    SteelMaterialClosed P := by
  exact And.intro E.yieldStrengthClosed
    (And.intro E.elasticModulusClosed
      (And.intro E.hardeningModulusClosed
        (And.intro E.nonlinearStressStrainClosed
          (And.intro E.residualStressDistributionClosed E.cyclicSofteningClosed))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse