import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuWavesSolidMechanicsLemmaCanonicalLaneLean

structure WaveEquationSolutionPackage where
  waveSolution : Type u
  existence : Prop
  uniqueness : Prop
  stability : Prop
  regularity : Prop
  initialConditions : Prop
  boundaryMatch : Prop

structure WaveEquationSolutionEvidence (S : WaveEquationSolutionPackage) where
  existenceClosed : S.existence
  uniquenessClosed : S.uniqueness
  stabilityClosed : S.stability
  regularityClosed : S.regularity
  initialConditionsClosed : S.initialConditions
  boundaryMatchClosed : S.boundaryMatch

def WaveEquationSolutionClosed (S : WaveEquationSolutionPackage) : Prop :=
  S.existence ∧ S.uniqueness ∧ S.stability ∧ S.regularity ∧ S.initialConditions ∧ S.boundaryMatch

theorem wave_equation_solution_closed_from_evidence (S : WaveEquationSolutionPackage)
    (Ev : WaveEquationSolutionEvidence S) : WaveEquationSolutionClosed S := by
  exact And.intro Ev.existenceClosed
    (And.intro Ev.uniquenessClosed
      (And.intro Ev.stabilityClosed
        (And.intro Ev.regularityClosed
          (And.intro Ev.initialConditionsClosed Ev.boundaryMatchClosed))))

end BuWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse