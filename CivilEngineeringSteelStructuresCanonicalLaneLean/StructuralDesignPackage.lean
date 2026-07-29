import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelAdmittedObject where
  structureType : Prop
  materialYieldStrength : Prop
  crossSectionClass : Prop
  loadCombinations : Prop
  designChecks : Prop
  conclusion : designChecks

def SteelWitnessClosed (O : SteelAdmittedObject) : Prop :=
  O.designChecks

structure SteelFrame where
  memberForces : Prop
  momentCapacity : Prop
  axialCapacity : Prop
  shearCapacity : Prop
  interactionFormula : Prop

def FrameDesignPackage (F : SteelFrame) : Prop :=
  F.memberForces ∧ F.momentCapacity ∧ F.axialCapacity ∧ F.shearCapacity ∧ F.interactionFormula

structure SteelConnection where
  boltGrade : Prop
  weldStrength : Prop
  connectionCapacity : Prop

def ConnectionDesignPackage (C : SteelConnection) : Prop :=
  C.boltGrade ∧ C.weldStrength ∧ C.connectionCapacity

structure SteelBasePlate where
  plateThickness : Prop
  anchorBoltCapacity : Prop
  concreteBearingStrength : Prop

def BasePlateDesignPackage (B : SteelBasePlate) : Prop :=
  B.plateThickness ∧ B.anchorBoltCapacity ∧ B.concreteBearingStrength

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
