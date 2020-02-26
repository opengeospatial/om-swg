

| Source | Target | Name | Source Role | ST | SC | Target Role | TT | TC | Navigability |
| --- | --- | --- | --- | --- | --- | --- | --- |  --- | --- |
| AbstractObservation | AnyFeature | | | | | proximateFeatureOfInterest | N | 0..* | S -> T |
| AbstractObservation | AnyFeature | | | | | ultimateFeatureOfInterest | N | 0..* |  S -> T |
| AbstractObservation | AbstractObservation | | | | | relatedObservation | N | 0..* |  S -> T |
| AbstractObservation | Procedure | | | | | usedProcedure | VN | 0..* |  S -> T |
| AbstractObservation | ObservableProperty | | | | | observedProperty | VN | 0..* |  S -> T |
| AbstractObservation | Observer | | | | | madeBy | VN | 0..* |  S -> T |
| AbstractObservation | Any | | | | | metadata | N | 0..* |  S -> T |
| AbstractObservation | Any | Range | | | | result | N | **0..1 ?** |  S -> T |
| Observer | Platform | | hosts | V | 0..1 | hostedBy | V | 0..* |  S <-> T |
| Observer | ObservableProperty | | observedBy | V | 0..* | observes | V | 0..* |  S <-> T |
| ObservationCollection | AbstractObservation | | | | | member | N | 0..* |  S -> T |
