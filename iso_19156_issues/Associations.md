

| Source | Target | Name | Source Role | ST | SC | Target Role | TT | TC | Navigability |
| --- | --- | --- | --- | --- | --- | --- | --- |  --- | --- |
| AbstractObservationBase | AnyFeature | | **?** | | 0..*  | proximateFeatureOfInterest | N | 0..* | S -> T |
| AbstractObservationBase | AnyFeature | | **?** | | 0..*  | ultimateFeatureOfInterest | N | 0..* |  S -> T |
| AbstractObservation | AbstractObservation | | **?** | | 0..*  | relatedObservation | N | 0..* |  S -> T |
| AbstractObservationBase | Procedure | | observation | N | 0..* | procedure | N | 0..* |  S -> T |
| AbstractObservationBase | ObservableProperty | | observation | N | 0..* | observedProperty | VN | 0..* |  S -> T |
| AbstractObservationBase | Observer | | observation | N | 0..* | observer | N | 0..* |  S -> T |
| AbstractObservationBase | Any | | | | | metadata | N | 0..* |  S -> T |
| AbstractObservationBase | Any | Range | | | | result | N | 0..* |  S -> T |
| Observer | Platform | | **system** |  N | 0..* |  platform |  N | 0..* |  S <-> T |
| Platform | Platform | |   |   |   | relatedPlatform | N | 0..* |  S -> T |
| Observer | ObservableProperty | |  observer |  N | 0..* | observableProperty | V | 0..* |  S -> T |
| ObservationCollection | AbstractObservation | | collection | N | 0..* | member | N | 0..* | S -> T |

Note: the auto-associations between AbstractObservations and Platforms carry information. Still under discussion, but believe converging to:
* sourceRole
* targetRole
* ?name?
