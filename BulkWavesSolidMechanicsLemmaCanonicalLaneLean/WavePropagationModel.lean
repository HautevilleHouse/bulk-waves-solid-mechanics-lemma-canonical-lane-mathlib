import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure WavePropagationPackage where
  medium : Type u
  density : Type v
  elasticityTensor : Type w
  displacementField : Type x
  waveEquations : Prop
  boundaryCondition : Prop
  initialCondition : Prop

structure WavePropagationEvidence (W : WavePropagationPackage) where
  waveEquationsClosed : W.waveEquations
  boundaryConditionClosed : W.boundaryCondition
  initialConditionClosed : W.initialCondition

def WavePropagationClosed (W : WavePropagationPackage) : Prop :=
  W.waveEquations ∧ W.boundaryCondition ∧ W.initialCondition

theorem wave_propagation_closed_from_evidence (W : WavePropagationPackage)
    (E : WavePropagationEvidence W) : WavePropagationClosed W := by
  exact And.intro E.waveEquationsClosed
    (And.intro E.boundaryConditionClosed E.initialConditionClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
