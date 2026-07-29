import canonicalLaneMathlib.AdmissibleClass

/-!
# Elastic Wave Equation Package
-/

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure ElasticWaveEquationPackage where
  displacementField : Type u
  strainTensor : Type v
  stressTensor : Type w
  linearElasticityLaw : Prop
  waveEquationHyperbolic : Prop
  initialBoundaryConditions : Prop

structure ElasticWaveEquationEvidence (P : ElasticWaveEquationPackage) where
  linearElasticityLawClosed : P.linearElasticityLaw
  waveEquationHyperbolicClosed : P.waveEquationHyperbolic
  initialBoundaryConditionsClosed : P.initialBoundaryConditions

def ElasticWaveEquationClosed (P : ElasticWaveEquationPackage) : Prop :=
  P.linearElasticityLaw ∧ P.waveEquationHyperbolic ∧ P.initialBoundaryConditions

theorem elastic_wave_equation_closed_from_evidence (P : ElasticWaveEquationPackage)
    (E : ElasticWaveEquationEvidence P) : ElasticWaveEquationClosed P := by
  exact And.intro E.linearElasticityLawClosed
    (And.intro E.waveEquationHyperbolicClosed E.initialBoundaryConditionsClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse