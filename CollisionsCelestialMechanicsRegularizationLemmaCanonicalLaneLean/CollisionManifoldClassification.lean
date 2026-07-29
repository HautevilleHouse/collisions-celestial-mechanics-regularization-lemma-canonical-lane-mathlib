import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure CollisionManifoldClassificationPackage where
  energyLevelSet : Type u
  collisionSet : Prop
  regularizedManifold : Type v
  classificationComplete : Prop

structure CollisionManifoldClassificationEvidence (C : CollisionManifoldClassificationPackage) where
  collisionSetClosed : C.collisionSet
  regularizedManifoldClosed : C.regularizedManifold
  classificationCompleteClosed : C.classificationComplete

def CollisionManifoldClassificationClosed (C : CollisionManifoldClassificationPackage) : Prop :=
  C.collisionSet ∧ C.regularizedManifold ∧ C.classificationComplete

theorem collision_manifold_classification_closed_from_evidence (C : CollisionManifoldClassificationPackage) (E : CollisionManifoldClassificationEvidence C) : CollisionManifoldClassificationClosed C := by
  exact And.intro E.collisionSetClosed (And.intro E.regularizedManifoldClosed E.classificationCompleteClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse