import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelMaterialPackage where
  steelType : Type u
  yieldStress : Prop
  ultimateStress : Prop
  elasticModulus : Prop
  strainHardening : Prop
  ductilityLimit : Prop

structure SteelMaterialEvidence (M : SteelMaterialPackage) where
  yieldStressClosed : M.yieldStress
  ultimateStressClosed : M.ultimateStress
  elasticModulusClosed : M.elasticModulus
  strainHardeningClosed : M.strainHardening
  ductilityLimitClosed : M.ductilityLimit

def SteelMaterialClosed (M : SteelMaterialPackage) : Prop :=
  M.yieldStress ∧ M.ultimateStress ∧ M.elasticModulus ∧ M.strainHardening ∧ M.ductilityLimit

theorem steel_material_closed_from_evidence (M : SteelMaterialPackage) (E : SteelMaterialEvidence M) : SteelMaterialClosed M := by
  exact And.intro E.yieldStressClosed (And.intro E.ultimateStressClosed (And.intro E.elasticModulusClosed (And.intro E.strainHardeningClosed E.ductilityLimitClosed)))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse