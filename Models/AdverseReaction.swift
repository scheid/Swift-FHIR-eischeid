//
//  AdverseReaction.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Specific reactions to a substance.
 *
 *  Scope and Usage Adverse Reaction resources are used to provide information about specific reactions to a
 *  substance. These are normally associated with an AllergyIntolerance resource, but can be reported on their own
 *  when no assumption of further reactions is being made, or when specific events are being described.
 */
class AdverseReaction: FHIRResource
{
	override var resourceName: String {
		get { return "AdverseReaction" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! External Ids for this adverse reaction */
	var identifier: Identifier[]?
	
	/*! When the reaction occurred */
	var date: NSDate?
	
	/*! Who had the reaction */
	var subject: ResourceReference?
	
	/*! Indicates lack of reaction */
	var didNotOccurFlag: Bool?
	
	/*! Who recorded the reaction */
	var recorder: ResourceReference?
	
	/*! What was reaction? */
	var symptom: AdverseReactionSymptom[]?
	
	/*! Suspected substance */
	var exposure: AdverseReactionExposure[]?
	
	convenience init(subject: ResourceReference?, didNotOccurFlag: Bool?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if didNotOccurFlag {
			self.didNotOccurFlag = didNotOccurFlag
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["didNotOccurFlag"] as? Int {
				self.didNotOccurFlag = (1 == val)
			}
			if let val = js["recorder"] as? NSDictionary {
				self.recorder = ResourceReference(json: val)
			}
			if let val = js["symptom"] as? Array<NSDictionary> {
				self.symptom = AdverseReactionSymptom.from(val) as? AdverseReactionSymptom[]
			}
			if let val = js["exposure"] as? Array<NSDictionary> {
				self.exposure = AdverseReactionExposure.from(val) as? AdverseReactionExposure[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  What was reaction?.
 *
 *  The signs and symptoms that were observed as part of the reaction.
 */
class AdverseReactionSymptom: FHIRElement
{	
	/*! E.g. Rash, vomiting */
	var code: CodeableConcept?
	
	/*! severe | serious | moderate | minor */
	var severity: String?
	
	convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Suspected substance.
 *
 *  An exposure to a substance that preceded a reaction occurrence.
 */
class AdverseReactionExposure: FHIRElement
{	
	/*! When the exposure occurred */
	var date: NSDate?
	
	/*! drugadmin | immuniz | coincidental */
	var type: String?
	
	/*! likely | unlikely | confirmed | unknown */
	var causalityExpectation: String?
	
	/*! Presumed causative substance */
	var substance: ResourceReference?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["causalityExpectation"] as? String {
				self.causalityExpectation = val
			}
			if let val = js["substance"] as? NSDictionary {
				self.substance = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
