//
//  TemtemViewModel.swift
//  temtem
//
//  Created by marlon von ansale on 31/10/2022.
//

import Foundation

public enum TVYields: String {
	case hp
	case sta
	case spd
	case atk
	case def
	case spatk
	case spdef
	case unowned
}

public extension TVYields {
	init(withYield string:String) {
		self = TVYields.init(rawValue: string) ?? .unowned
	}
	
	func getTypeString() -> String {
		self.rawValue.uppercased()
	}
}

public struct TemtemViewModel: Hashable {
    public let number:Int
    public let temtemName:String
    public let portraitWikiUrl:URL
    public let largeIcon:URL?
    public let largeLumaIcon:URL?
    public let numberLabel:String
    public let gameDescription: String
    public let types:[TemtemTypes]
	public let traits:[String]
	public let wikiUrl:String?
	public let tvYields:[TVYields:Int]
	
	public init(number:Int, temtemName:String, portraitWikiUrl:URL, largeIcon:URL?, largeLumaIcon:URL?, numberLabel:String, gameDescription: String, types:[TemtemTypes], traits:[String], wikiUrl:String?, tvYields:[TVYields:Int]) {
		self.number = number
		self.temtemName = temtemName
		self.portraitWikiUrl = portraitWikiUrl
		self.gameDescription = gameDescription
        self.largeIcon =  largeIcon
        self.largeLumaIcon =  largeLumaIcon
		self.numberLabel = numberLabel
		self.types =  types
		self.traits = traits
		self.wikiUrl = wikiUrl
		self.tvYields = tvYields
	}
	
}
