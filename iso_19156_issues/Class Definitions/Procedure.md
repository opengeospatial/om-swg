## AbstractProcedure

### UML Notes

The class OM_Process (Figure 2) is an instance of the «metaclass» GF_FeatureType (ISO 19109:2005), which therefore represents a feature type. OM_Process is abstract, and has no attributes, operations or associations. It serves as the base class for observation processes. The purpose of an observation process is to generate an observation result. An instance of OM_Process is often an instrument or sensor, but may be a human observer, a simulator, or a process or algorithm applied to more primitive results used as inputs. 

NOTE	ISO 19115-2:2008 provides MI_Instrument, LE_Processing and LE_Algorithm, which could all be modelled as specializations of OM_Process. OGC SensorML [10] provides a model which is suitable for many observation procedures. 

*Note: this is taken from the V2 Observation, must be reworked.*

New note: based on the assumption that the Observer is the sensor instance, class based information on the sensor type should be provided in the procedure

### Definition

TBD

## SimpleProcedure

### UML Notes

TBD

### Definition

TBD

### Attributes
documentation: DocumentCitation - CI_Citation

name: String


responsibleParty:

Type: ?

