

| Source | Target | Name | Source Role | ST | SC | Target Role | TT | TC | Navigability |
| --- | --- | --- | --- | --- | --- | --- | --- |  --- | --- |
| AbstractObservation | AnyFeature | | | | | proximateFeatureOfInterest | N | 0..* | S -> T |
| AbstractObservation | AnyFeature | | | | | ultimateFeatureOfInterest | N | 0..* |  S -> T |
| AbstractObservation | AbstractObservation | | | | | relatedObservation | N | 0..* |  S -> T |
| AbstractObservation | Procedure | | | | | ~~usedProcedure~~ procedure | ~~VN~~ N | 0..* |  S -> T |
| AbstractObservation | ObservableProperty | | | | | observedProperty | VN | 0..* |  S -> T |
| AbstractObservation | Observer | | | | | ~~madeBy~~ observer | ~~VN~~ N | 0..* |  S -> T |
| AbstractObservation | Any | | | | | metadata | N | 0..* |  S -> T |
| AbstractObservation | Any | Range | | | | result | N | **0..1 ?** |  S -> T |
| Observer | Platform | | ~~hosts~~ observer | ~~V~~ N | 0..1 | ~~hostedBy~~ platform | ~~V~~ N | 0..* |  S <-> T |
| Platform | Platform | | context? | N | 0..* | context? | N | 0..* |  S <-> T |
| Observer | ObservableProperty | | ~~observedBy~~ observer | ~~V~~ N | 0..* | observes | V | 0..* |  S <-> T |
| ObservationCollection | AbstractObservation | | | | | member | N | 0..* |  S -> T |

Note: the auto-associations between AbstractObservations and Platforms carry information. Still under discussion, but believe converging to:
* sourceRole
* targetRole
* ?name?
