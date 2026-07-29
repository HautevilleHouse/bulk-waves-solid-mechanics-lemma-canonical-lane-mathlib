import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkSolidMechanicsLemma

structure WaveEquationPackage (W : WaveElasticPackage) (S : StressStrainPackage W) where
  displacementField : Type u
  pdeFormulation : Prop
  boundaryConditions : Prop
  solutionExistence : Prop

structure WaveEquationEvidence {W : WaveElasticPackage} {S : StressStrainPackage W} (P : WaveEquationPackage W S) where
  pdeFormulationClosed : P.pdeFormulation
  boundaryConditionsClosed : P.boundaryConditions
  solutionExistenceClosed : P.solutionExistence

def WaveEquationClosed {W : WaveElasticPackage} {S : StressStrainPackage W} (P : WaveEquationPackage W S) : Prop :=
  P.pdeFormulation ∧ P.boundaryConditions ∧ P.solutionExistence

theorem wave_equation_closed_from_evidence {W : WaveElasticPackage} {S : StressStrainPackage W} (P : WaveEquationPackage W S) (E : WaveEquationEvidence P) : WaveEquationClosed P :=
  by
    exact And.intro E.pdeFormulationClosed (And.intro E.boundaryConditionsClosed E.solutionExistenceClosed)

end BulkSolidMechanicsLemma
end HautevilleHouse
