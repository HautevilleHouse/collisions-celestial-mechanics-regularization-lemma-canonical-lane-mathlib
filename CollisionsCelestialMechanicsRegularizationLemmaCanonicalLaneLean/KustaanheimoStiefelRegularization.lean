import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure KustaanheimoStiefelRegularizationPackage where
  quaternionMap : Type u
  regularizedEquation : Prop
  energyRelation : Prop
  collisionRemoval : Prop

structure KustaanheimoStiefelRegularizationEvidence (K : KustaanheimoStiefelRegularizationPackage) where
  quaternionMapClosed : K.quaternionMap
  regularizedEquationClosed : K.regularizedEquation
  energyRelationClosed : K.energyRelation
  collisionRemovalClosed : K.collisionRemoval

def KustaanheimoStiefelRegularizationClosed (K : KustaanheimoStiefelRegularizationPackage) : Prop :=
  K.quaternionMap ∧ K.regularizedEquation ∧ K.energyRelation ∧ K.collisionRemoval

theorem kustaanheimo_stiefel_regularization_closed_from_evidence (K : KustaanheimoStiefelRegularizationPackage) (E : KustaanheimoStiefelRegularizationEvidence K) : KustaanheimoStiefelRegularizationClosed K := by
  exact And.intro E.quaternionMapClosed (And.intro E.regularizedEquationClosed (And.intro E.energyRelationClosed E.collisionRemovalClosed))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse