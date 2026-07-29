import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure TrajectoryClassificationPackage where
  collisionType : Prop
  nearCollisionBehavior : Prop
  postRegularizationStability : Prop
  orbitalFamilyPartition : Prop

structure TrajectoryClassificationEvidence (T : TrajectoryClassificationPackage) where
  collisionTypeClosed : T.collisionType
  nearCollisionBehaviorClosed : T.nearCollisionBehavior
  postRegularizationStabilityClosed : T.postRegularizationStability
  orbitalFamilyPartitionClosed : T.orbitalFamilyPartition

def TrajectoryClassificationClosed (T : TrajectoryClassificationPackage) : Prop :=
  T.collisionType ∧ T.nearCollisionBehavior ∧ T.postRegularizationStability ∧ T.orbitalFamilyPartition

theorem trajectory_classification_closed_from_evidence
    (T : TrajectoryClassificationPackage) (E : TrajectoryClassificationEvidence T) :
    TrajectoryClassificationClosed T := by
  exact And.intro E.collisionTypeClosed (And.intro E.nearCollisionBehaviorClosed
    (And.intro E.postRegularizationStabilityClosed E.orbitalFamilyPartitionClosed))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse