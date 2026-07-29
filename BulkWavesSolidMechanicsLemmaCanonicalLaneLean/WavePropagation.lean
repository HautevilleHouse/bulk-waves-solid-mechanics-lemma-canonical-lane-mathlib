import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuWavesSolidMechanicsLemmaCanonicalLaneLean

structure WavePropagationPackage where
  waveType : Type u
  phaseVelocity : Prop
  groupVelocity : Prop
  attenuation : Prop
  dispersionRelation : Prop
  boundaryConditions : Prop

structure WavePropagationEvidence (W : WavePropagationPackage) where
  phaseVelocityClosed : W.phaseVelocity
  groupVelocityClosed : W.groupVelocity
  attenuationClosed : W.attenuation
  dispersionRelationClosed : W.dispersionRelation
  boundaryConditionsClosed : W.boundaryConditions

def WavePropagationClosed (W : WavePropagationPackage) : Prop :=
  W.phaseVelocity ∧ W.groupVelocity ∧ W.attenuation ∧ W.dispersionRelation ∧ W.boundaryConditions

theorem wave_propagation_closed_from_evidence (W : WavePropagationPackage)
    (Ev : WavePropagationEvidence W) : WavePropagationClosed W := by
  exact And.intro Ev.phaseVelocityClosed
    (And.intro Ev.groupVelocityClosed
      (And.intro Ev.attenuationClosed
        (And.intro Ev.dispersionRelationClosed Ev.boundaryConditionsClosed)))

end BuWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse