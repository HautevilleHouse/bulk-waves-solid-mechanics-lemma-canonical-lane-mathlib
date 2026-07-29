import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkSolidMechanicsLemma

structure EnergyDecayPackage (W : WaveElasticPackage) (S : StressStrainPackage W) (P : WaveEquationPackage W S) where
  totalEnergy : Prop
  dissipationRate : Prop
  energyDecayInequality : Prop

structure EnergyDecayEvidence {W : WaveElasticPackage} {S : StressStrainPackage W} {P : WaveEquationPackage W S} (E : EnergyDecayPackage W S P) where
  totalEnergyClosed : E.totalEnergy
  dissipationRateClosed : E.dissipationRate
  energyDecayInequalityClosed : E.energyDecayInequality

def EnergyDecayClosed {W : WaveElasticPackage} {S : StressStrainPackage W} {P : WaveEquationPackage W S} (E : EnergyDecayPackage W S P) : Prop :=
  E.totalEnergy ∧ E.dissipationRate ∧ E.energyDecayInequality

theorem energy_decay_closed_from_evidence {W : WaveElasticPackage} {S : StressStrainPackage W} {P : WaveEquationPackage W S} (E : EnergyDecayPackage W S P) (Ev : EnergyDecayEvidence E) : EnergyDecayClosed E :=
  by
    exact And.intro Ev.totalEnergyClosed (And.intro Ev.dissipationRateClosed Ev.energyDecayInequalityClosed)

end BulkSolidMechanicsLemma
end HautevilleHouse
