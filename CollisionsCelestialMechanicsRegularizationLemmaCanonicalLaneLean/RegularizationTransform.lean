import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularizationTransform {M : Type u} [TopologicalSpace M] where
  source : M
  target : M
  blowupCoordinates : M → M
  timeRegularization : M → M
  symplecticProperty : Prop
  collisionRemoval : Prop
  analyticity : Prop

structure RegularizationTransformEvidence {M : Type u} [TopologicalSpace M]
    (T : RegularizationTransform M) where
  symplecticPropertyClosed : T.symplecticProperty
  collisionRemovalClosed : T.collisionRemoval
  analyticityClosed : T.analyticity

def RegularizationTransformClosed {M : Type u} [TopologicalSpace M]
    (T : RegularizationTransform M) : Prop :=
  T.symplecticProperty ∧ T.collisionRemoval ∧ T.analyticity

theorem regularization_transform_closed_from_evidence
    {M : Type u} [TopologicalSpace M] (T : RegularizationTransform M)
    (E : RegularizationTransformEvidence T) :
    RegularizationTransformClosed T := by
  exact And.intro E.symplecticPropertyClosed
    (And.intro E.collisionRemovalClosed E.analyticityClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse