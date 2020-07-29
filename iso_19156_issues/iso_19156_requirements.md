# ISO 19156 Edition 2 (O&M 3.0) Requirements Classes

Draft OGC O&M SWG proposal

Terminology:
* System Under Test: data model or information system declaring conformance with or being tested for conformance with the a set of requirements.

## X. Abstract Observation Schema

| Requirements Class | | http://www.opengis.net/spec/om/3.0/req/abstract-observation-schema |
|--------------------|-|-|
| Target type | data model or information system |
| Dependency | TBA |

This Requirements Class defines the fundamental abstract concepts for describing an Observation act according to the Observations and measurements conceptual model. The System Under Test conforming to this Requirements Class is able record and process Observation information using these concepts and, provided with a common data encoding and a transfer medium, exchange this information without loss with other systems conforming to this Requirements Class.

This Requirements Class does not define any particular data encoding or transfer medium to use for implementing data exchange.

*Figure 1: Abstract Observation Schema overview*

### X.1 Observation

Add: Definition of the Observation concept and its associations

*Table 1: Observation attributes*

| Attribute | Description |
| ---------------| -------------------------------|
| phenomenonTime | |
| resultTime     | |
| validTime      | |

*Table 2: Observation associations*

| Association role | Description |
|------------------|------------------------|
| featureOfInterest | |
| procedure        | |
| observedProperty | |
| observer         | |
| result           | |

```
Requirement X.1: req/abstract-observation-schema/observation

The System Under Test shall support a realization of the Observation concept with the associations, attributes and constraints as described in Figure 1 and in Tables 1 and 2.
```


### X.2 Procedure

Add: Definition of the Procedure concept and its associations

*Table 3: Procedure attributes*

| Association role | Description |
|------------------|------------------------|
| observation      | |

```
Requirement X.2: req/abstract-observation-schema/procedure

The System Under Test shall support a realization of the Procedure concept with the associations and attributes as described in Figure 1 and Table 3.
```

### X.3 ObservableProperty

Add: Definition of the ObservableProperty concept and its associations

*Table 4: ObservableProperty attributes*

| Association role | Description |
|------------------|------------------------|
| observation      | |

```
Requirement X.3: req/abstract-observation-schema/observable-property

The System Under Test shall support a realization of the ObservableProperty concept with the associations and attributes as described in Figure 1 and Table 4.
```

### X.4 Observer

Add: Definition of the Observer concept and its associations

*Table 5: Observer attributes*

| Association role   | Description |
|--------------------|------------------------|
| observation        | |
| observableProperty | |
| host               | |

```
Requirement 4: req/abstract-observation-schema/observer

The System Under Test shall support a realization of the Observer concept with the associations and attributes as described in Figure 1 and Table 5.
```

### X.5 Platform

Add: Definition of the Platform concept and its associations

*Table 6: Platform attributes*

| Association role   | Description |
|--------------------|------------------------|
| observer           | |

```
Requirement X.5: req/abstract-observation-schema/platform

The System Under Test shall support a realization of the Platform concept with the associations and attributes as described in Figure 1 and Table 6.
```


## X. Observation Core

| Requirements Class | | http://www.opengis.net/spec/om/3.0/req/observation-core  |
|--------------------|-|-|
| Target type | data model or information system ||
| Dependency | O&M Abstract observation schema | http://www.opengis.net/spec/om/3.0/req/abstract-observation-schema |
| Dependency | ISO 19109 - General feature model ||

This Requirements Class defines a common basis for implementing O&M concepts in data models and information systems based on the General Feature Model as defined in ISO 19109. 

This Requirements Class does not define any particular data encoding or transfer medium to use for implementing data exchange.

*Figure 2: Observation Core package overview*

### X.1 AbstractObservationCharacteristics

Add: Definition of the AbstractObservationCharacteristics class and its associations

*Table 7: AbstractObservationCharacteristics attributes*

| Attribute | Description |
| ---------------| -------------------------------|
| observationType | |
| parameter ||
| phenomenonTime | |
| resultQuality | |
| resultTime     | |
| validTime      | |

*Table 8: AbstractObservationCharacteristics associations*

| Association role | Name | Description |
|------------------|------|------------------|
| ultimateFeatureOfInterest | Domain | |
| proximateFeatureOfInterest | DomainProxy | |
| procedure        || |
| observedProperty || |
| observer         || |
| result           | Range | |
| metadata || |

```
Requirement X.1: req/observation-core/abstract-observation-characteristics

The System Under Test shall support the AbstractObservationCharacteristics class with the associations and attributes as described in Figure 2 and in Tables 7 and 8.
```

### X.1 Observation

Add: Definition of the Observation class and its associations

*Table 9: Observation associations*

| Association role | Description |
|------------------|------------------------|
| relatedObservation |  |

```
Requirement X.2: req/observation-core/observation

The System Under Test shall support the Observation class with the associations and constraints as described in Figure 2 and in Table 9.
```

### X.3 AbstractObserver

Add: Definition of the AbstracObserver class and its associations

*Table 10: AbstractObserver associations*

| Association role | Description |
|------------------|------------------------|
| host |  |
| observableProperty |  |

```
Recommendation X.1: rec/observation-core/abstract-observer

The System Under Test should use a class specialized from the AbstractObserver class as the target of the observer association role of the instances of the Observation class, with the associations as described in Figure 2 and in Table 10.
```

## X. Observation Collections

## X. Observing Capabilities

## X. Basic Observations

## X. Sampling

