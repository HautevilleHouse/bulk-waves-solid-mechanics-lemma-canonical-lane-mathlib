import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkSolidMechanicsLemma

structure StressStrainPackage (W : WaveElasticPackage) where
  strainTensor : Type u
  stressTensor : Type v
  hookesLaw : Prop
  linearElastic : Prop

structure StressStrainEvidence {W : WaveElasticPackage} (S : StressStrainPackage W) where
  hookesLawClosed : S.hookesLaw
  linearElasticClosed : S.linearElastic

def StressStrainClosed {W : WaveElasticPackage} (S : StressStrainPackage W) : Prop :=
  S.hookesLaw ∧ S.linearElastic

theorem stress_strain_closed_from_evidence {W : WaveElasticPackage} (S : StressStrainPackage W) (E : StressStrainEvidence S) : StressStrainClosed S :=
  by
    exact And.intro E.hookesLawClosed E.linearElasticClosed

end BulkSolidMechanicsLemma
end HautevilleHouse
