import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure EulerCollisionIndicator where
  collisionCandidate : PrimitiveCollisionEvent
  indicatorValue : ℝ
  threshold : ℝ
  indicatesCollision : Prop
  indicatesCollisionTerm : indicatesCollision

structure SundmanRegularizationCondition where
  angularMomentum : ℝ
  energy : ℝ
  conditionMet : Prop
  conditionMetTerm : conditionMet

structure CollisionIndicatorPackage where
  eulerIndicator : EulerCollisionIndicator
  sundmanCondition : SundmanRegularizationCondition
  indicatorReliable : Prop
  indicatorReliableTerm : indicatorReliable

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse