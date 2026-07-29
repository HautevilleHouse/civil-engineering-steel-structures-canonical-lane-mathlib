import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure BoltedConnection where
  boltDiameter : ℝ
  boltGrade : ℝ
  numberOfBolts : ℕ
  plateThickness : ℝ
  plateYieldStrength : ℝ

def shearCapacity (d Fub n : ℝ) : ℝ :=
  n * (π / 4) * d ^ 2 * Fub / 1000

theorem shear_capacity_positive (d Fub n : ℝ) (hd : d > 0) (hFub : Fub > 0) (hn : n > 0) :
    shearCapacity d Fub n > 0 := by
  unfold shearCapacity
  have h : (π / 4) * d ^ 2 * Fub / 1000 > 0 := by
    positivity
  nlinarith

structure DesignCheck (conn : BoltedConnection) where
  capacity : ℝ
  demand : ℝ
  isSafe : capacity ≥ demand

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
