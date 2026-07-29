import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure SundmanRegularizationPackage where
  timeRegularization : Type u
  transformedTimeVariable : Type v
  collisionAvoidance : Prop
  globalExistence : Prop
  threeBodyCase : Prop

structure SundmanRegularizationEvidence (S : SundmanRegularizationPackage) where
  collisionAvoidanceClosed : S.collisionAvoidance
  globalExistenceClosed : S.globalExistence
  threeBodyCaseClosed : S.threeBodyCase

def SundmanRegularizationClosed (S : SundmanRegularizationPackage) : Prop :=
  S.collisionAvoidance ∧ S.globalExistence ∧ S.threeBodyCase

theorem sundman_regularization_closed_from_evidence
    (S : SundmanRegularizationPackage) (E : SundmanRegularizationEvidence S) :
    SundmanRegularizationClosed S := by
  exact And.intro E.collisionAvoidanceClosed
    (And.intro E.globalExistenceClosed E.threeBodyCaseClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse
