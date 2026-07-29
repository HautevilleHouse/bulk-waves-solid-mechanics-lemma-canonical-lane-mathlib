import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuWavesSolidMechanicsLemmaCanonicalLaneLean

structure BulkWaveEquationPackage where
  displacementField : Type u
  strainTensor : Type v
  stressTensor : Type w
  density : Prop
  waveSpeed : Prop
  balanceOfMass : Prop
  equationOfMotion : Prop
  constitutiveLaw : Prop

structure BulkWaveEquationEvidence (E : BulkWaveEquationPackage) where
  densityClosed : E.density
  waveSpeedClosed : E.waveSpeed
  balanceOfMassClosed : E.balanceOfMass
  equationOfMotionClosed : E.equationOfMotion
  constitutiveLawClosed : E.constitutiveLaw

def BulkWaveEquationClosed (E : BulkWaveEquationPackage) : Prop :=
  E.density ∧ E.waveSpeed ∧ E.balanceOfMass ∧ E.equationOfMotion ∧ E.constitutiveLaw

theorem bulk_wave_equation_closed_from_evidence (E : BulkWaveEquationPackage)
    (Ev : BulkWaveEquationEvidence E) : BulkWaveEquationClosed E := by
  exact And.intro Ev.densityClosed
    (And.intro Ev.waveSpeedClosed
      (And.intro Ev.balanceOfMassClosed
        (And.intro Ev.equationOfMotionClosed Ev.constitutiveLawClosed)))

end BuWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse