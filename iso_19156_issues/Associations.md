

<<<<<<< Updated upstream
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
| Observer | ObservableProperty | |  observer |  N | 0..* | observableProperty | N | 0..* |  S -> T |
| ObservationCollection | AbstractObservation | | collection | N | 0..* | member | N | 0..* | S -> T |
=======
| Source                  | Target                | Name   | Source Role         | SC   | Target Role                | TC   | Navigability | Association class  |
| ----------------------- | --------------------- | ------ | ------------------- | ---- | -------------------------- | -----| ------------ | ------------------ |
| AbstractObservationBase | AnyFeature            |        | observation         | 0..* | proximateFeatureOfInterest | 0..* | S <-> T      |                    |
| AbstractObservationBase | AnyFeature            |        | observation         | 0..* | ultimateFeatureOfInterest  | 0..* | S <-> T      |                    | 
| AbstractObservationBase | Procedure             |        | observation         | 0..* | procedure                  | 0..* | S <-> T      |                    | 
| AbstractObservationBase | ObservableProperty    |        | observation         | 0..* | observedProperty           | 0..* | S <-> T      |                    |    
| AbstractObservationBase | Observer              |        | observation         | 0..* | observer                   | 0..* | S <-> T      |                    |
| AbstractObservationBase | Any                   |        | observation         | 0..* | metadata                   | 0..* | S <-> T      |                    | 
| AbstractObservationBase | Any                   | Range  | observation         | 0..* | result                     | 0..* | S <-> T      |                    |
| AbstractObservation     | AbstractObservation   |        | relatingObservation | 0..* | relatedObservation         | 0..* | S <-> T      | ObservationContext |
| Observer                | **AnyFeature/Platform**? |     | observer            | 0..* | platform                   | 0..* | S <-> T      | Deployment         | 
| Platform                | Platform              |        | relatingPlatform    | 0..* | relatedPlatfom             | 0..* | S <-> T      | PlatformContext    |
| Observer                | ObservableProperty    |        | observer            | 0..* | observableProperty         | 0..* | S <-> T      |                    |
| ObservationCollection   | AbstractObservation   |        | collection          | 0..* | member                     | 0..* | S <-> T      |                    |
| ObservationCollection   | MemberCharacteristics |        | collection          | 0..* | memberCharacteristics      | 0..* | S <-> T      |                    |
>>>>>>> Stashed changes

Note: the auto-associations between AbstractObservations and Platforms carry information. Still under discussion, but believe converging to:
* sourceRole
* targetRole
* ?name?
