import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuWavesSolidMechanicsLemmaCanonicalLaneLean

structure EnergyFluxPackage where
  kineticEnergyDensity : Prop
  potentialEnergyDensity : Prop
  totalEnergy : Prop
  energyConservation : Prop
  energyFluxVector : Type u
  transportTheorem : Prop

structure EnergyFluxEvidence (E : EnergyFluxPackage) where
  kineticEnergyDensityClosed : E.kineticEnergyDensity
  potentialEnergyDensityClosed : E.potentialEnergyDensity
  totalEnergyClosed : E.totalEnergy
  energyConservationClosed : E.energyConservation
  transportTheoremClosed : E.transportTheorem

def EnergyFluxClosed (E : EnergyFluxPackage) : Prop :=
  E.kineticEnergyDensity ∧ E.potentialEnergyDensity ∧ E.totalEnergy ∧ E.energyConservation ∧ E.transportTheorem

theorem energy_flux_closed_from_evidence (E : EnergyFluxPackage)
    (Ev : EnergyFluxEvidence E) : EnergyFluxClosed E := by
  exact And.intro Ev.kineticEnergyDensityClosed
    (And.intro Ev.potentialEnergyDensityClosed
      (And.intro Ev.totalEnergyClosed
        (And.intro Ev.energyConservationClosed Ev.transportTheoremClosed)))

end BuWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse