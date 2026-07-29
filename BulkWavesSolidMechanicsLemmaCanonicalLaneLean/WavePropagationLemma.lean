import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure WavePropagationLemmaPackage where
  propagationDirection : Type u
  polarization : Type v
  energyFlux : Type w
  propagationCondition : Prop
  energyConservation : Prop
  attenuationModel : Prop

structure WavePropagationLemmaEvidence (W : WavePropagationLemmaPackage) where
  propagationConditionClosed : W.propagationCondition
  energyConservationClosed : W.energyConservation
  attenuationModelClosed : W.attenuationModel

def WavePropagationLemmaClosed (W : WavePropagationLemmaPackage) : Prop :=
  W.propagationCondition ∧ W.energyConservation ∧ W.attenuationModel

theorem wave_propagation_lemma_closed_from_evidence (W : WavePropagationLemmaPackage) (E : WavePropagationLemmaEvidence W) :
    WavePropagationLemmaClosed W := by
  exact And.intro E.propagationConditionClosed
    (And.intro E.energyConservationClosed E.attenuationModelClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse