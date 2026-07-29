import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BulkWavesSolidMechanicsLemmaCanonicalLaneLean.ElasticWaveEquation

/-!
# Bulk Wave Propagation Package
-/

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure BulkWavePropagationPackage {P : ElasticWaveEquationPackage} where
  longitudinalWaveSpeed : Prop
  shearWaveSpeed : Prop
  waveModeOrthogonality : Prop
  energyTransport : Prop

structure BulkWavePropagationEvidence {P : ElasticWaveEquationPackage}
    (Q : BulkWavePropagationPackage P) where
  longitudinalWaveSpeedClosed : Q.longitudinalWaveSpeed
  shearWaveSpeedClosed : Q.shearWaveSpeed
  waveModeOrthogonalityClosed : Q.waveModeOrthogonality
  energyTransportClosed : Q.energyTransport

def BulkWavePropagationClosed {P : ElasticWaveEquationPackage}
    (Q : BulkWavePropagationPackage P) : Prop :=
  Q.longitudinalWaveSpeed ∧ Q.shearWaveSpeed ∧ Q.waveModeOrthogonality ∧ Q.energyTransport

theorem bulk_wave_propagation_closed_from_evidence {P : ElasticWaveEquationPackage}
    (Q : BulkWavePropagationPackage P) (E : BulkWavePropagationEvidence Q) :
    BulkWavePropagationClosed Q := by
  exact And.intro E.longitudinalWaveSpeedClosed
    (And.intro E.shearWaveSpeedClosed
      (And.intro E.waveModeOrthogonalityClosed E.energyTransportClosed))

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse