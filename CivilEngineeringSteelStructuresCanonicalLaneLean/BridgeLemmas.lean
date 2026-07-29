import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SteelWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse
