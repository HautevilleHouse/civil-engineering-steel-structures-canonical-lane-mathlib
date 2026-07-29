import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure SteelSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SteelAdmittedObject where
  space : SteelSpace
  materialProperties : Prop
  crossSectionGeometry : Prop
  designRequirements : Prop
  conclusion : designRequirements

def SteelWitnessClosed (O : SteelAdmittedObject) : Prop :=
  O.designRequirements

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
