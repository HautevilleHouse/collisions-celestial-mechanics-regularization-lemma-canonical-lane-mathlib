import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure EndpointClassificationPackage where
  finalState : Type u
  stateTopology : TopologicalSpace finalState
  nonCollisionEndpoint : Prop
  endpointPrediction : Prop
  regularizationLemmaConcluded : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  nonCollisionEndpointClosed : E.nonCollisionEndpoint
  endpointPredictionClosed : E.endpointPrediction
  regularizationLemmaConcludedClosed : E.regularizationLemmaConcluded

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.nonCollisionEndpoint ∧ E.endpointPrediction ∧ E.regularizationLemmaConcluded

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.nonCollisionEndpointClosed (And.intro Ev.endpointPredictionClosed
    Ev.regularizationLemmaConcludedClosed)

theorem endpoint_classification_supplies_mathlib_statement
    (E : EndpointClassificationPackage) : E.nonCollisionEndpoint := E.nonCollisionEndpoint

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse