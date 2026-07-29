import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  isotropyCondition : Prop
  positiveDefiniteness : Prop
  symmetryProperties : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  isotropyConditionClosed : E.isotropyCondition
  positiveDefinitenessClosed : E.positiveDefiniteness
  symmetryPropertiesClosed : E.symmetryProperties

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.isotropyCondition ∧ E.positiveDefiniteness ∧ E.symmetryProperties

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.isotropyConditionClosed
    (And.intro Ev.positiveDefinitenessClosed Ev.symmetryPropertiesClosed)

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse