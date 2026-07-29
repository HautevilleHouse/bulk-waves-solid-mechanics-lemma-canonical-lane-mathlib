
namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure WaveEquationPackage (O : SolidWavesObject) where
  linearElasticityAssumed : Prop
  densityField : Type
  stiffnessTensor : Type
  waveSpeed : Prop
  dispersionRelation : Prop

structure WaveEquationEvidence (O : SolidWavesObject) (W : WaveEquationPackage O) where
  linearElasticityAssumedClosed : W.linearElasticityAssumed
  waveSpeedClosed : W.waveSpeed
  dispersionRelationClosed : W.dispersionRelation

def WaveEquationClosed (O : SolidWavesObject) (W : WaveEquationPackage O) : Prop :=
  W.linearElasticityAssumed ∧ W.waveSpeed ∧ W.dispersionRelation

theorem wave_equation_closed_from_evidence
    (O : SolidWavesObject) (W : WaveEquationPackage O)
    (E : WaveEquationEvidence O W) : WaveEquationClosed O W := by
  exact And.intro E.linearElasticityAssumedClosed
    (And.intro E.waveSpeedClosed E.dispersionRelationClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
