//
//  FHIRResource.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/2/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Abstract superclass for all FHIR resource models.
 */
class FHIRResource: FHIRElement
{
	init(json: NSDictionary?) {
		super.init(json: json)
	}
}
