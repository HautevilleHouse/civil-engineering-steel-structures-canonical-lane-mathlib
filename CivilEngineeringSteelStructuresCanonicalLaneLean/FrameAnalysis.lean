import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure FrameAnalysisPackage (E : BeamColumnElementPackage) where
  structureModel : Type
  connectivityMatrix : Type
  globalStiffnessAssembly : Prop
  loadVector : Type
  displacementBoundaryConditions : Prop
  forceBoundaryConditions : Prop
  equilibriumEquations : Prop
  compatibilityEquations : Prop
  constitutiveEquations : Prop

structure FrameAnalysisEvidence {E : BeamColumnElementPackage}
    (F : FrameAnalysisPackage E) where
  globalStiffnessAssemblyClosed : F.globalStiffnessAssembly
  displacementBoundaryConditionsClosed : F.displacementBoundaryConditions
  forceBoundaryConditionsClosed : F.forceBoundaryConditions
  equilibriumEquationsClosed : F.equilibriumEquations
  compatibilityEquationsClosed : F.compatibilityEquations
  constitutiveEquationsClosed : F.constitutiveEquations

def FrameAnalysisClosed {E : BeamColumnElementPackage}
    (F : FrameAnalysisPackage E) : Prop :=
  F.globalStiffnessAssembly ∧ F.displacementBoundaryConditions ∧
  F.forceBoundaryConditions ∧ F.equilibriumEquations ∧
  F.compatibilityEquations ∧ F.constitutiveEquations

theorem frame_analysis_closed_from_evidence
    {E : BeamColumnElementPackage} (F : FrameAnalysisPackage E)
    (Ev : FrameAnalysisEvidence F) : FrameAnalysisClosed F := by
  exact And.intro Ev.globalStiffnessAssemblyClosed
    (And.intro Ev.displacementBoundaryConditionsClosed
      (And.intro Ev.forceBoundaryConditionsClosed
        (And.intro Ev.equilibriumEquationsClosed
          (And.intro Ev.compatibilityEquationsClosed
            Ev.constitutiveEquationsClosed))))

end CivilEngineeringSteelStructuresCanonicalLaneLean
end HautevilleHouse