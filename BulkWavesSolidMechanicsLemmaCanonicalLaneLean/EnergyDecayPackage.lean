
namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure EnergyDecayPackage (O : SolidWavesObject) (W : WaveEquationPackage O) where
  kineticEnergy : Type
  potentialEnergy : Type
  totalEnergyBounded : Prop
  energyDecayRate : Prop

structure EnergyDecayEvidence (O : SolidWavesObject) (W : WaveEquationPackage O) (E : EnergyDecayPackage O W) where
  totalEnergyBoundedClosed : E.totalEnergyBounded
  energyDecayRateClosed : E.energyDecayRate

def EnergyDecayClosed (O : SolidWavesObject) (W : WaveEquationPackage O) (E : EnergyDecayPackage O W) : Prop :=
  E.totalEnergyBounded ∧ E.energyDecayRate

theorem energy_decay_closed_from_evidence
    (O : SolidWavesObject) (W : WaveEquationPackage O) (E : EnergyDecayPackage O W)
    (Ev : EnergyDecayEvidence O W E) : EnergyDecayClosed O W E := by
  exact And.intro Ev.totalEnergyBoundedClosed Ev.energyDecayRateClosed

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
