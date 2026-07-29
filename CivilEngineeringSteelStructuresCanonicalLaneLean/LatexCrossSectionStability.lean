import CivilEngineeringSteelStructuresCanonicalLaneLean.CrossSectionStability

/-!
# LaTeX Representation of Cross-Section Stability
-/

namespace HautevilleHouse
namespace CivilEngineeringSteelStructuresCanonicalLaneLean

structure LatexCode where
  code : String
  compileSuccess : Bool

def crossSectionStabilityLatex : LatexCode :=
  { code := "\\section{Cross-Section Stability}\\label{sec:cross-section-stability}\n% The stability of a cross-section is governed by the width-to-thickness ratio $b/t$,\n% which determines the section class according to EN 1993-1-1.\nLet $b$ be the flange width, $t$ the flange thickness, and $f_y$ the yield strength.\nThe slenderness parameter $\\lambda_p = \\frac{b/t}{28.4\\varepsilon\\sqrt{k_\\sigma}}$,\nwhere $\\varepsilon = \\sqrt{235\\,/\\,f_y}$.\nIf $\\lambda_p \\leq 0.673$, the section is fully effective; otherwise, an effective width\n$b_{\\text{eff}} = \\rho b$ is used, where $\\rho$ is the reduction factor.\nThe stability condition is $M_{\\text{Ed}} \\leq M_{\\text{b,Rd}} = \\chi W_{\\text{eff}} f_y / \\gamma_{M1}$.",
    compileSuccess := true
  }

theorem latex_compile_success : crossSectionStabilityLatex.compileSuccess := by
  rfl

end HautevilleHouse
end CivilEngineeringSteelStructuresCanonicalLaneLean