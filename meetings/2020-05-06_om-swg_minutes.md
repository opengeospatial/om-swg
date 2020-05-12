# Minutes of the OGC O&M SWG meeting 6 May 2020

Time: 2020-04-29 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording]() available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)** (by proxy to Kathi first half)
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf** 

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Hylke's proxy to Kathi and Clemens' proxy to Ilkka.

No affecting patents were identified.
### Agenda
*   ObservationCollection constraint texts.
*   Textual descriptions of the UML classes.
*   Use of interfaces vs. abstract classes in the model, especially in connection with specializations/implementations of AnyFeature and Any (FoI, result and metadata).
*   Schedule on drafting the Sampling concepts.

## 2. ObservationCollection constraint texts. 
The texts for the constraints will be merged into google doc, 
will be grouped a bit as many constraints similar (same text for each attribute, constraining time types from base, easier to discuss grouped)

KS: too complex to do on-the-fly due to EA interface, probably easier to extract from XMI (subsequently confirmed by IR)
Further discussion when the constraints have been included in the google.

### ToDo 
* IR add constraints

## 3. Textual descriptions of the UML classes.
Link for google doc with class descriptions: https://docs.google.com/document/d/1rbtyRuJV56qZfo_YOhcNYi-VQ9Giyt7A-9vuuo01qLI/edit?usp=sharing

KS described how the doc for Class descriptionshas been structured, where definitions were taken from (V2.0 UML, SOSA)
Agreement that  further definitions from the 2.0 version of standard should be added.

KS noted that in addition to class descriptions, the document now also contains placeholders for:
* Description of the various associations
* Suggestion of attributes for simple types (taken from INSPIRE Process)

KS: Having these existing definitions from previous standards will help assure alignment (as far as possible) with existing standards.

Discussion on how we proceed with providing definitions, as the general request for help has not gotten responses

IR suggested to assign classes to SWG members, Assignments of classes for descriptive texts as follows:

* ObservableProperty: Sylvain
* Procedure, Observer, Platform: Kathi
* Observation, Collection: Ilkka
* FoI: Hylke
* Metadata, Result: Linda

In order to allow for easier collaboration, it was agreed that once new texts have been proposed, 
the proposer provides a short note under the GitHub issue #46 for wider notification

For feedback on other's issues, the agreed approach is to provide feedback in the form of a comment
However, minor edits are ok, changes can also be tracked in Google (please take care that you're not accidentally changing the meaning of the text!)

In addition, it was agreed that a direct link to the current version of the UML model (diagram) would be helpful, added to the start of the google doc

Discussion on the necessity of examples, request to please provide for all definitions. 
KS pointed out that example in procedure could be confusing, at present includes the measurement height. 
While this could make sense in some contexts, it also confounds procedure with FoI. 
HS: pointed out that there are real world use cases where the height at which is measured is formally part of the procedure within some communities.
Agreement that this is a fairly grey area.
Requested an additional example where this is cleanly separated, suggested water levels (feedback now received from SG, included in doc)

The current observable properties also often mix in other concepts, makes data discovery difficult if the same property is provided in too many variants.
Goal should be to try and provide clean normalized examples, leave the pragmatic hacks to reality ;)

KS: Further discussion on examples - pertains to FoI example from O&M V2 where FoI example includes station. 
This caused issues in the past as they're usually different real world objects, being lumped together for simplicity.
Example from air quality -  one doesn't provide the ozone concentration of the measurement tower, one provides it for the bubble of air around the intake.
Reason we've now included Platform to differentiate between FoI and hosting facility 

IR: we have new concepts in our model, will really have to pay attention to to state how those are intended to be used, Like the platform.

### ToDo:
* KS add V2 definitions  KS: add info from standard
* KS: add responsibilities to doc
* KS will mark the copied texts (make grey)

## 4. Use of interfaces vs. abstract classes in the model, especially in connection with specializations/implementations of AnyFeature and Any (FoI, result and metadata).

IR: providing observations on somebody else's feature, how do we enable the backlinks from metadata, result and ...?

LB: Why not define FoI as a class and not refer to general feature model?

KS: would work with the proximate FoI as usually defined for the measurement. 
Gets difficult with the ultimate FoI as this is often already defined within a domain model, out of our control.

IR: the any feature is special - description states should be subsituted by concrete feature within specific implementation, more than just an abstract FT

KS: approach would be providing an interface with the link to an observation, 
this interface could then be applied to existing domain features, adding the association to the UFoI in a standardized manner.
Example: River segment on centralized data store (national registry), our observations point at these features. 
National central source can add observation association pointing back to data sources

IR: can be decided case-by-case, add additional attribute pointing to the data

KS: advantage of the interface is that this link would be done in a standarized manner, not re-defined in national languages

KS: could make the interface normative, provide an informative example showing how domain features can be extended by the interface

### ToDos:
IR: will contact TC 211 for feedback on how to possible utilize interfaces

## 5. Schedule on drafting the Sampling concepts.

IR: Need to set up a timeline

KS: will take some time as such concepts need to settle, need to also investigate where SOSA has gone on this.

### Relevant dates:
* Sept 4th deadline
* 2nd week june ISO plenary, June 10th
* ideally ISO before OGC, then can bring back ISO feedback

Agreement to aim for a Kickoff at the OGC TC Meet, check with Simon if he's available for insights

Sampling in full complexity is probably only relevant for geology and soil, a bit for water
LB will provide examples for soil sampling, Sylvain for Water, get Simon to explain
The examples must be analysed to see if they can be aligned to SOSA? Can we provide all required data for the Sampling and Sampler concepts?

For real world use, we need to understand if the sampling analysis process is stored in the DB, or if it's commonly subsumed in the ObsProp or process

HS: best example is the moon, every rock and every bit of every rock was properly documented and stored as specimens

This brought the discussion to the **Specimen** concept - we couldn't find this in SOSA, but often used in real world cases, should be maintained 

SG: communities have specimen models, International GeoSample Number is commonly used

Agreement that we do need to keep an explicit sampling model, as far as possible aligned with SOSA approach
Essential that simple sampling hierarchies can also be provided without the use of the more complex sampling classes

Open Question - Is procedure the same class for sampling and observation, or are these different classes in our world? In SOSA its the same.

### ToDos:
* LB: overview of soil sampling
* SG: overview of water sampling
* IR: check interfaces and context modelling

## 6. OGC TC Meet
### Agenda:
* Observation Overview (ISO) - suggestion SG is present abstracted, not UML to avoid nitty-gritty discussions, 
  * focus on major changes (abstract/concrete, addition of observer, FoIs, collections (potential obs), platform)
  * KS will support with diagrams, also relevant for final docs
* General timeline finalization
* Core Sampling Kickoff, talks as discussed with examples

## 7. Priority topic for the next week

* Sampling kick-off session on 10th June
* Textual class descriptions status
* ObservationCollection constraint texts
* The use of interfaces and feature types (mixed levels of abstraction)
