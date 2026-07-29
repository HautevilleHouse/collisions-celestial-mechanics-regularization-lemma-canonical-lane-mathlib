import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularizedCollisionOrbit {M : Type u} [TopologicalSpace M] where
  timeDomain : Type v
  configurationSpace : M
  collisionConfig : Set M
  regularizingTransform : M → M
  orbit : timeDomain → M
  energyConstraint : Prop
  angularMomentumConstraint : Prop
  collisionAvoidance : Prop
  regularizedOrbitSmooth : Prop

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse