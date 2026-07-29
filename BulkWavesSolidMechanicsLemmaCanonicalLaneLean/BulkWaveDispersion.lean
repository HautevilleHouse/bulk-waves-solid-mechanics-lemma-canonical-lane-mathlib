import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure BulkWaveDispersionPackage where
  waveNumber : Type u
  angularFrequency : Type v
  dispersionRelation : Prop
  phaseVelocity : Prop
  groupVelocity : Prop
  waveModes : Type w

structure BulkWaveDispersionEvidence (D : BulkWaveDispersionPackage) where
  dispersionRelationClosed : D.dispersionRelation
  phaseVelocityClosed : D.phaseVelocity
  groupVelocityClosed : D.groupVelocity

def BulkWaveDispersionClosed (D : BulkWaveDispersionPackage) : Prop :=
  D.dispersionRelation ∧ D.phaseVelocity ∧ D.groupVelocity

theorem bulk_wave_dispersion_closed_from_evidence (D : BulkWaveDispersionPackage)
    (E : BulkWaveDispersionEvidence D) : BulkWaveDispersionClosed D := by
  exact And.intro E.dispersionRelationClosed
    (And.intro E.phaseVelocityClosed E.groupVelocityClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
