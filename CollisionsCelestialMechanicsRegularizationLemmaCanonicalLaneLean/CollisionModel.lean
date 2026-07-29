import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure PrimitiveMassPoint where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ

structure PrimitiveCollisionEvent where
  time : ℝ
  point : ℝ × ℝ × ℝ
  massesInvolved : List ℝ

structure TwoBodyCollisionModel where
  masses : ℝ × ℝ
  initialConditions : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  collisionEvent : PrimitiveCollisionEvent
  regularizable : Prop
  regularizableTerm : regularizable

structure NBodyCollisionSystem where
  points : List PrimitiveMassPoint
  collisions : List PrimitiveCollisionEvent
  interactionLaw : String

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse