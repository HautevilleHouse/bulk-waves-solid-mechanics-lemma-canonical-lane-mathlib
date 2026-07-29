import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : SolidWavesObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SolidWavesClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
