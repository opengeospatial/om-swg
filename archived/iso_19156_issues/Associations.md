

| Source                  | Target                | Name   | Source Role         | SC   | Target Role                | TC   | Navigability | Association class  | Source qualifiers | Target qualifiers |
| ----------------------- | --------------------- | ------ | ------------------- | ---- | -------------------------- | -----| ------------ | ------------------ | - | - | 
| AbstractObservationBase | AnyFeature            | DomainProxy? |               |      | proximateFeatureOfInterest | 0..* | S -> T       |                    | | | 
| AbstractObservationBase | AnyFeature            | Domain? |                    |      | ultimateFeatureOfInterest  | 0..* | S -> T       |                    | | | 
| AbstractObservationBase | AbstractProcedure     |        |                     |      | procedure                  | 0..* | S -> T       |                    | | |  
| AbstractObservationBase | AbstractObservableProperty |   |                     |      | observedProperty           | 0..* | S -> T       |                    | | |     
| AbstractObservationBase | AbstractObserver      |        |                     |      | observer                   | 0..* | S -> T       |                    | | | 
| AbstractObservationBase | Any                   |        |                     |      | metadata                   | 0..* | S -> T       |                    | | |  
| AbstractObservationBase | Any                   | Range  |                     |      | result                     | 0..* | S -> T       |                    | | | 
| AbstractObserver        | AbstractPlatform      |        | observer            | 0..* | platformDeployment         | 0..* | S <-> T      | Deployment         | | |  
| AbstractPlatform        | AbstractPlatform      |        | relatedPlatform     | 0..* | relatedPlatform            | 0..* | S <-> T      |                    | sourceRole, targetRole | sourceRole, targetRole | 
| AbstractObserver        | AbstractObservableProperty |   |                     |      | observableProperty         | 0..* | S -> T       |                    | | | 
| ObservationCollection   | AbstractObservation   |        |                     |      | member                     | 0..* | S -> T       |                    | | | 
| ObservationCollection   | MemberCharacteristics |        | collection          | 0..* | memberCharacteristics      | 0..1 | S <-> T      |                    | | |
| ObservationRelated (interface)   | AbstractObservation | |                     |      | relatedObservation         | 0..* | S -> T       |                    | | sourceRole, targetRole |
| SimpleProcedure         | AbstractObservation (through ObservationRelated) | | |      | relatedObservation         | 0..* | S -> T       |                    | | sourceRole, targetRole |
| SimpleObservableProperty | AbstractObservation (through ObservationRelated) | ||      | relatedObservation         | 0..* | S -> T       |                    | | sourceRole, targetRole |
| SimpleObservableProperty | AbstractObserver     |        |                     |      | observer                   | 0..* | S -> T       |                    | | |
| SimpleObserver           | AbstractObservation (through ObservationRelated) | ||      | relatedObservation         | 0..* | S -> T       |                    | | sourceRole, targetRole |
| SimplePlatform           | AbstractObservation (through ObservationRelated) | ||      | relatedObservation         | 0..* | S -> T       |                    | | sourceRole, targetRole |
