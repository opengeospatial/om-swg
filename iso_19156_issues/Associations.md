

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

Note: the auto-associations between AbstractObservations and Platforms carry information. Still under discussion, but believe converging to:
* sourceRole
* targetRole
* ?name?
