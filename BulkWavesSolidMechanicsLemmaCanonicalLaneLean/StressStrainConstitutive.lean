import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BulkWavesSolidMechanicsLemmaCanonicalLaneLean.ElasticWaveEquation

/-!
# Stress-Strain Constitutive Relations Package
-/

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure StressStrainConstitutivePackage {P : ElasticWaveEquationPackage} where
  hookeTensor : Type u
  isotropicElasticity : Prop
  stiffnessPositivity : Prop
  strainEnergyDensity : Prop

structure StressStrainConstitutiveEvidence {P : ElasticWaveEquationPackage}
    (S : StressStrainConstitutivePackage P) where
  isotropicElasticityClosed : S.isotropicElasticity
  stiffnessPositivityClosed : S.stiffnessPositivity
  strainEnergyDensityClosed : S.strainEnergyDensity

def StressStrainConstitutiveClosed {P : ElasticWaveEquationPackage}
    (S : StressStrainConstitutivePackage P) : Prop :=
  S.isotropicElasticity ∧ S.stiffnessPositivity ∧ S.strainEnergyDensity

theorem stress_strain_constitutive_closed_from_evidence {P : ElasticWaveEquationPackage}
    (S : StressStrainConstitutivePackage P) (E : StressStrainConstitutiveEvidence S) :
    StressStrainConstitutiveClosed S := by
  exact And.intro E.isotropicElasticityClosed
    (And.intro E.stiffnessPositivityClosed E.strainEnergyDensityClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse