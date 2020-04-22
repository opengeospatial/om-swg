# Definitions for the Classes in O&M

## AbstractObservation
### UML Notes
An observation is an act that results in the estimation of the value of a feature property, and involves application of a specified procedure, such as a sensor, instrument, algorithm or process chain. The procedure may be applied in-situ, remotely, or ex-situ with respect to the sampling location. Use of a common model allows observation data using different procedures to be combined unambiguously. Observation details are also important for data discovery and for data quality estimation. Observation feature types are defined by the properties that support these applications. 

An observation is an act associated with a discrete time instant or period through which a number, term or other symbol is assigned to a phenomenon [2]. The result of an observation is an estimate of the value of a property of some feature, so the details of the observation are metadata concerning the value of the feature property. The observation itself is also a feature, since it has properties and identity. 

*Note: this is taken from the V2 Observation, must be reworked.*

### Definition
TBD

## Observation

### UML Notes

*None*

### Definition

TBD

## PotentialObservation

### UML Notes

*None*

### Definition

TBD

## HomogenousObservationCollection

### UML Notes

*None*

### Definition

TBD

## SummarizingObservationCollection

### UML Notes

*None*

### Definition

TBD

## ObservationDescription

### UML Notes

*None*

### Definition

TBD










## AnyFeature
Note: while we cannot define this feature, we should describe it
### UML Notes
The class AnyFeature is an instance of the «metaclass» FeatureType (ISO 19109). It represents the set of all classes which are feature types. 

NOTE      AnyFeature is implemented in GML (ISO 19136:2007) by the element gml:AbstractFeature and type gml:AbstractFeatureType. 

In an implementation this abstract class shall be substituted by a concrete class representing a feature type from an application schema associated with a domain of discourse (ISO 19109, ISO 19101). 

*Note: this is taken from the V2 Observation, must be reworked.*

### Definition
TBD

## ObservationContext
### UML Notes

Some observations depend on other observations to provide context which is important, sometimes essential, in understanding the result. These dependencies are stronger than mere spatio-temporal coincidences, requiring explicit representation. If present, the association class class ObservationContext (Figure 2) shall link a OM_Observation to another OM_Observation, with the role name relatedObservation for the target. It shall support one attribute.

EXAMPLES	Some examples include the conditions associated with experimental replicates (e.g., experimental plots and treatments used), biotic factors (e.g., ecological community), interactions among features (e.g., predator-prey), or other temporary relationships occurring at the time of observation that are are not inherent to the observed features themselves (i.e., they change over time), or the related observation may provide input to a process that generates a new result.

This association complements the Intention association which describes relationships between a sampling feature and domain features.   

*Note: this is taken from the V2 Observation, must be reworked.*

### Definition
TBD

## Procedure

### UML Notes

The class OM_Process (Figure 2) is an instance of the «metaclass» GF_FeatureType (ISO 19109:2005), which therefore represents a feature type. OM_Process is abstract, and has no attributes, operations or associations. It serves as the base class for observation processes. The purpose of an observation process is to generate an observation result. An instance of OM_Process is often an instrument or sensor, but may be a human observer, a simulator, or a process or algorithm applied to more primitive results used as inputs. 

NOTE	ISO 19115-2:2008 provides MI_Instrument, LE_Processing and LE_Algorithm, which could all be modelled as specializations of OM_Process. OGC SensorML [10] provides a model which is suitable for many observation procedures. 

*Note: this is taken from the V2 Observation, must be reworked.*

### Definition

TBD

## ObservableProperty

### UML Notes

*None*

### Definition

TBD

## Observer

### UML Notes

This is the instance, not the class

*None*

### Definition

TBD

## Platform

### UML Notes

*None*

### Definition

TBD

## Any (target of metadata and result)

### UML Notes

*None*

### Definition

TBD

