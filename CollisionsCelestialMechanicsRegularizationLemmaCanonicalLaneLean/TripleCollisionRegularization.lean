import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure TripleCollisionRegularizationPackage where
  threeBodySystem : Type u
  collisionSet : Set threeBodySystem
  regularizingMap : threeBodySystem → threeBodySystem
  regularizedFlow : Prop
  collisionSurfaceResolution : Prop
  analyticExtension : Prop

structure TripleCollisionRegularizationEvidence
    (T : TripleCollisionRegularizationPackage) where
  regularizedFlowClosed : T.regularizedFlow
  collisionSurfaceResolutionClosed : T.collisionSurfaceResolution
  analyticExtensionClosed : T.analyticExtension

def TripleCollisionRegularizationClosed
    (T : TripleCollisionRegularizationPackage) : Prop :=
  T.regularizedFlow ∧ T.collisionSurfaceResolution ∧ T.analyticExtension

theorem triple_collision_regularization_closed_from_evidence
    (T : TripleCollisionRegularizationPackage)
    (E : TripleCollisionRegularizationEvidence T) :
    TripleCollisionRegularizationClosed T := by
  exact And.intro E.regularizedFlowClosed
    (And.intro E.collisionSurfaceResolutionClosed E.analyticExtensionClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse