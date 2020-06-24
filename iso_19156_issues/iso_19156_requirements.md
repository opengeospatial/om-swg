# ISO 19156 Edition 2 (O&M 3.0) Requirements Classes

Draft OGC O&M SWG proposal

Terminology:
* System Under Test: data model or information system declaring conformance with or being tested for conformance with the a set of requirements.

## X. Abstract Observation Schema

| Requirements Class | |
|--------------------|-|
| http://www.opengis.net/spec/om/3.0/req/abstract-observation-schema ||
| Target type | data model or information system |
| Dependency | TBA |

This Requirements Class defines the fundamental abstract concepts for describing an Observation act according to the Observations and measurements conceptual model. The System Under Test conforming to this Requirements Class is able record and process Observation information using these concepts and, provided with a common data encoding and a transfer medium, exchange this information without loss with other systems conforming to this Requirements Class.

This Requirements Class does not define any particular data encoding or transfer medium to use for implementing data exchange.

*Figure 1: Abstract Observation Schema concepts.*

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
| objectOfInterest | |
| procedure        | |
| observedProperty | |
| observer         | |
| result           | |

```
Requirement 1: req/abstract-observation-schema/observation

The System Under Test shall support the concept of an Observation as described in Figure 1 and in Tables 1 and 2.
```


### X.2 Procedure

Add: Definition of the Procedure concept and its associations

*Table 3: Procedure attributes*

| Association role | Description |
|------------------|------------------------|
| observation      | |

```
Requirement 2: req/abstract-observation-schema/procedure

The System Under Test shall support the concept of a Procedure as described in Figure 1 and Table 3.
```

### X.3 ObservableProperty

Add: Definition of the ObservableProperty concept and its associations

*Table 4: ObservableProperty attributes*

| Association role | Description |
|------------------|------------------------|
| observation      | |

```
Requirement 3: req/abstract-observation-schema/observable-property

The System Under Test shall support the concept of an ObservableProperty as described in Figure 1 and Table 4.
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

The System Under Test shall support the concept of an Observer as described in Figure 1 and Table 5.
```

### X.5 Platform

Add: Definition of the Platform concept and its associations

*Table 6: Platform attributes*

| Association role   | Description |
|--------------------|------------------------|
| observer           | |

```
Requirement 5: req/abstract-observation-schema/platform

The System Under Test shall support the concept of an Platform as described in Figure 1 and Table 6.
```



## X. Observation Core

## X. Observation Collections

## X. Observing Capabilities

## X. Basic Observations

## X. Sampling Observations

