import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkSolidMechanicsLemma

structure WaveElasticPackage where
  waveSpeed : ℝ
  density : ℝ
  lameMu : ℝ
  lameLambda : ℝ
  shearModulusPositive : waveSpeed > 0
  densityPositive : density > 0

structure WaveElasticEvidence (W : WaveElasticPackage) where
  waveSpeedClosed : W.waveSpeed > 0
  densityClosed : W.density > 0

def WaveElasticClosed (W : WaveElasticPackage) : Prop :=
  W.waveSpeed > 0 ∧ W.density > 0

theorem wave_elastic_closed_from_evidence (W : WaveElasticPackage) (E : WaveElasticEvidence W) : WaveElasticClosed W :=
  by
    exact And.intro E.waveSpeedClosed E.densityClosed

end BulkSolidMechanicsLemma
end HautevilleHouse
