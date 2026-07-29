import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure DispersionRelationPackage where
  waveNumber : Type u
  angularFrequency : Type v
  phaseVelocity : Type w
  groupVelocity : Type x
  dispersionEquation : Prop
  frequencyBands : Prop
  waveModes : Prop

structure DispersionRelationEvidence (D : DispersionRelationPackage) where
  dispersionEquationClosed : D.dispersionEquation
  frequencyBandsClosed : D.frequencyBands
  waveModesClosed : D.waveModes

def DispersionRelationClosed (D : DispersionRelationPackage) : Prop :=
  D.dispersionEquation ∧ D.frequencyBands ∧ D.waveModes

theorem dispersion_relation_closed_from_evidence (D : DispersionRelationPackage) (E : DispersionRelationEvidence D) :
    DispersionRelationClosed D := by
  exact And.intro E.dispersionEquationClosed
    (And.intro E.frequencyBandsClosed E.waveModesClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse