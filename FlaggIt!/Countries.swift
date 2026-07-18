//
//  Countries.swift
//  FlaggIt!
//
//  Created by Marius on 07.07.26.
//

import Foundation
import SwiftUI
enum Region: String, CaseIterable {
    case europe = "Europa"
    case asia = "Asien"
    case africa = "Afrika"
    case americas = "Amerika"
    case oceania = "Ozeanien"
    case antarctica = "Antarktis"
    case all = "Alle"
}

extension Region: Identifiable {
    var id: Self {self}
}

enum Difficulty: String, CaseIterable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

extension Difficulty: Identifiable {
    var id: Self {self}
}

extension Color {
    static let appBackground = Color(light: Color(red: 0.96, green: 0.95, blue: 0.93),
                                       dark: Color(red: 0.09, green: 0.09, blue: 0.10))
    static let appCard = Color(light: .white,
                                 dark: Color(red: 0.15, green: 0.15, blue: 0.16))
    static let appAccent = Color(red: 0.85, green: 0.42, blue: 0.20) // warmes Terracotta/Orange
    static let appTextPrimary = Color(light: Color(red: 0.12, green: 0.12, blue: 0.13),
                                        dark: .white)
    static let appTextSecondary = Color(light: .gray, dark: Color(white: 0.65))
}

// Hilfsinitializer für Light/Dark
extension Color {
    init(light: Color, dark: Color) {
        self = Color(UIColor { trait in
            trait.userInterfaceStyle == .dark ? UIColor(dark) : UIColor(light)
        })
    }
}

struct Country: Identifiable, Hashable {
    let id: String
    let assetName: String
    let isoCode: String
    let region: Region
    let difficulty: Difficulty

    var localizedName: String {
        Locale.current.localizedString(forRegionCode: isoCode) ?? assetName
    }
}

extension Country {
    static let all: [Country] = [
        Country(id: "AF", assetName: "Afghanistan", isoCode: "AF", region: .asia, difficulty: .medium),
        Country(id: "AX", assetName: "AlandIslands", isoCode: "AX", region: .europe, difficulty: .hard),
        Country(id: "AL", assetName: "Albania", isoCode: "AL", region: .europe, difficulty: .easy),
        Country(id: "DZ", assetName: "Algeria", isoCode: "DZ", region: .africa, difficulty: .easy),
        Country(id: "AS", assetName: "AmericanSamoa", isoCode: "AS", region: .oceania, difficulty: .hard),
        Country(id: "AD", assetName: "Andorra", isoCode: "AD", region: .europe, difficulty: .medium),
        Country(id: "AO", assetName: "Angola", isoCode: "AO", region: .africa, difficulty: .medium),
        Country(id: "AI", assetName: "Anguilla", isoCode: "AI", region: .americas, difficulty: .hard),
        Country(id: "AQ", assetName: "Antarctica", isoCode: "AQ", region: .antarctica, difficulty: .easy),
        Country(id: "AG", assetName: "AntiguaandBarbuda", isoCode: "AG", region: .americas, difficulty: .hard),
        Country(id: "AR", assetName: "Argentina", isoCode: "AR", region: .americas, difficulty: .easy),
        Country(id: "AM", assetName: "Armenia", isoCode: "AM", region: .asia, difficulty: .medium),
        Country(id: "AW", assetName: "Aruba", isoCode: "AW", region: .americas, difficulty: .hard),
        Country(id: "AU", assetName: "Australia", isoCode: "AU", region: .oceania, difficulty: .easy),
        Country(id: "AT", assetName: "Austria", isoCode: "AT", region: .europe, difficulty: .easy),
        Country(id: "AZ", assetName: "Azerbaijan", isoCode: "AZ", region: .asia, difficulty: .medium),
        Country(id: "BS", assetName: "Bahamas", isoCode: "BS", region: .americas, difficulty: .medium),
        Country(id: "BH", assetName: "Bahrain", isoCode: "BH", region: .asia, difficulty: .medium),
        Country(id: "BD", assetName: "Bangladesh", isoCode: "BD", region: .asia, difficulty: .easy),
        Country(id: "BB", assetName: "Barbados", isoCode: "BB", region: .americas, difficulty: .medium),
        Country(id: "BY", assetName: "Belarus", isoCode: "BY", region: .europe, difficulty: .medium),
        Country(id: "BE", assetName: "Belgium", isoCode: "BE", region: .europe, difficulty: .easy),
        Country(id: "BZ", assetName: "Belize", isoCode: "BZ", region: .americas, difficulty: .hard),
        Country(id: "BJ", assetName: "Benin", isoCode: "BJ", region: .africa, difficulty: .medium),
        Country(id: "BM", assetName: "Bermuda", isoCode: "BM", region: .americas, difficulty: .hard),
        Country(id: "BT", assetName: "Bhutan", isoCode: "BT", region: .asia, difficulty: .medium),
        Country(id: "BO", assetName: "BoliviaPlurinationalStateof", isoCode: "BO", region: .americas, difficulty: .medium),
        Country(id: "BQ", assetName: "BonaireSintEustatiusandSaba", isoCode: "BQ", region: .americas, difficulty: .hard),
        Country(id: "BA", assetName: "BosniaandHerzegovina", isoCode: "BA", region: .europe, difficulty: .medium),
        Country(id: "BW", assetName: "Botswana", isoCode: "BW", region: .africa, difficulty: .medium),
        Country(id: "BV", assetName: "BouvetIsland", isoCode: "BV", region: .antarctica, difficulty: .hard),
        Country(id: "BR", assetName: "Brazil", isoCode: "BR", region: .americas, difficulty: .easy),
        Country(id: "IO", assetName: "BritishIndianOceanTerritory", isoCode: "IO", region: .asia, difficulty: .hard),
        Country(id: "BN", assetName: "BruneiDarussalam", isoCode: "BN", region: .asia, difficulty: .hard),
        Country(id: "BG", assetName: "Bulgaria", isoCode: "BG", region: .europe, difficulty: .medium),
        Country(id: "BF", assetName: "BurkinaFaso", isoCode: "BF", region: .africa, difficulty: .medium),
        Country(id: "BI", assetName: "Burundi", isoCode: "BI", region: .africa, difficulty: .hard),
        Country(id: "CV", assetName: "CaboVerde", isoCode: "CV", region: .africa, difficulty: .hard),
        Country(id: "KH", assetName: "Cambodia", isoCode: "KH", region: .asia, difficulty: .medium),
        Country(id: "CM", assetName: "Cameroon", isoCode: "CM", region: .africa, difficulty: .medium),
        Country(id: "CA", assetName: "Canada", isoCode: "CA", region: .americas, difficulty: .easy),
        Country(id: "KY", assetName: "CaymanIslands", isoCode: "KY", region: .americas, difficulty: .hard),
        Country(id: "CF", assetName: "CentralAfricanRepublic", isoCode: "CF", region: .africa, difficulty: .hard),
        Country(id: "TD", assetName: "Chad", isoCode: "TD", region: .africa, difficulty: .hard),
        Country(id: "CL", assetName: "Chile", isoCode: "CL", region: .americas, difficulty: .easy),
        Country(id: "CN", assetName: "China", isoCode: "CN", region: .asia, difficulty: .easy),
        Country(id: "CX", assetName: "ChristmasIsland", isoCode: "CX", region: .asia, difficulty: .hard),
        Country(id: "CC", assetName: "CocosKeelingIslands", isoCode: "CC", region: .asia, difficulty: .hard),
        Country(id: "CO", assetName: "Colombia", isoCode: "CO", region: .americas, difficulty: .easy),
        Country(id: "KM", assetName: "Comoros", isoCode: "KM", region: .africa, difficulty: .hard),
        Country(id: "CG", assetName: "Congo", isoCode: "CG", region: .africa, difficulty: .hard),
        Country(id: "CD", assetName: "CongoTheDemocraticRepublicofthe", isoCode: "CD", region: .africa, difficulty: .medium),
        Country(id: "CK", assetName: "CookIslands", isoCode: "CK", region: .oceania, difficulty: .hard),
        Country(id: "CR", assetName: "CostaRica", isoCode: "CR", region: .americas, difficulty: .medium),
        Country(id: "CI", assetName: "CotedIvoire", isoCode: "CI", region: .africa, difficulty: .medium),
        Country(id: "HR", assetName: "Croatia", isoCode: "HR", region: .europe, difficulty: .medium),
        Country(id: "CU", assetName: "Cuba", isoCode: "CU", region: .americas, difficulty: .easy),
        Country(id: "CW", assetName: "Curacao", isoCode: "CW", region: .americas, difficulty: .hard),
        Country(id: "CY", assetName: "Cyprus", isoCode: "CY", region: .asia, difficulty: .medium),
        Country(id: "CZ", assetName: "Czechia", isoCode: "CZ", region: .europe, difficulty: .medium),
        Country(id: "DK", assetName: "Denmark", isoCode: "DK", region: .europe, difficulty: .easy),
        Country(id: "DJ", assetName: "Djibouti", isoCode: "DJ", region: .africa, difficulty: .hard),
        Country(id: "DM", assetName: "Dominica", isoCode: "DM", region: .americas, difficulty: .hard),
        Country(id: "DO", assetName: "DominicanRepublic", isoCode: "DO", region: .americas, difficulty: .medium),
        Country(id: "EC", assetName: "Ecuador", isoCode: "EC", region: .americas, difficulty: .medium),
        Country(id: "EG", assetName: "Egypt", isoCode: "EG", region: .africa, difficulty: .easy),
        Country(id: "SV", assetName: "ElSalvador", isoCode: "SV", region: .americas, difficulty: .medium),
        Country(id: "GQ", assetName: "EquatorialGuinea", isoCode: "GQ", region: .africa, difficulty: .hard),
        Country(id: "ER", assetName: "Eritrea", isoCode: "ER", region: .africa, difficulty: .hard),
        Country(id: "EE", assetName: "Estonia", isoCode: "EE", region: .europe, difficulty: .medium),
        Country(id: "SZ", assetName: "Eswatini", isoCode: "SZ", region: .africa, difficulty: .hard),
        Country(id: "ET", assetName: "Ethiopia", isoCode: "ET", region: .africa, difficulty: .medium),
        Country(id: "FK", assetName: "FalklandIslandsMalvinas", isoCode: "FK", region: .americas, difficulty: .hard),
        Country(id: "FO", assetName: "FaroeIslands", isoCode: "FO", region: .europe, difficulty: .hard),
        Country(id: "FJ", assetName: "Fiji", isoCode: "FJ", region: .oceania, difficulty: .medium),
        Country(id: "FI", assetName: "Finland", isoCode: "FI", region: .europe, difficulty: .easy),
        Country(id: "FR", assetName: "France", isoCode: "FR", region: .europe, difficulty: .easy),
        Country(id: "GF", assetName: "FrenchGuiana", isoCode: "GF", region: .americas, difficulty: .hard),
        Country(id: "PF", assetName: "FrenchPolynesia", isoCode: "PF", region: .oceania, difficulty: .hard),
        Country(id: "TF", assetName: "FrenchSouthernTerritories", isoCode: "TF", region: .africa, difficulty: .hard),
        Country(id: "GA", assetName: "Gabon", isoCode: "GA", region: .africa, difficulty: .medium),
        Country(id: "GM", assetName: "Gambia", isoCode: "GM", region: .africa, difficulty: .hard),
        Country(id: "GE", assetName: "Georgia", isoCode: "GE", region: .asia, difficulty: .medium),
        Country(id: "DE", assetName: "Germany", isoCode: "DE", region: .europe, difficulty: .easy),
        Country(id: "GH", assetName: "Ghana", isoCode: "GH", region: .africa, difficulty: .medium),
        Country(id: "GI", assetName: "Gibraltar", isoCode: "GI", region: .europe, difficulty: .hard),
        Country(id: "GR", assetName: "Greece", isoCode: "GR", region: .europe, difficulty: .easy),
        Country(id: "GL", assetName: "Greenland", isoCode: "GL", region: .americas, difficulty: .medium),
        Country(id: "GD", assetName: "Grenada", isoCode: "GD", region: .americas, difficulty: .hard),
        Country(id: "GP", assetName: "Guadeloupe", isoCode: "GP", region: .americas, difficulty: .hard),
        Country(id: "GU", assetName: "Guam", isoCode: "GU", region: .oceania, difficulty: .hard),
        Country(id: "GT", assetName: "Guatemala", isoCode: "GT", region: .americas, difficulty: .medium),
        Country(id: "GG", assetName: "Guernsey", isoCode: "GG", region: .europe, difficulty: .hard),
        Country(id: "GN", assetName: "Guinea", isoCode: "GN", region: .africa, difficulty: .medium),
        Country(id: "GW", assetName: "GuineaBissau", isoCode: "GW", region: .africa, difficulty: .hard),
        Country(id: "GY", assetName: "Guyana", isoCode: "GY", region: .americas, difficulty: .hard),
        Country(id: "HT", assetName: "Haiti", isoCode: "HT", region: .americas, difficulty: .medium),
        Country(id: "HM", assetName: "HeardIslandandMcDonaldIslands", isoCode: "HM", region: .oceania, difficulty: .hard),
        Country(id: "VA", assetName: "HolySeeVaticanCityState", isoCode: "VA", region: .europe, difficulty: .medium),
        Country(id: "HN", assetName: "Honduras", isoCode: "HN", region: .americas, difficulty: .medium),
        Country(id: "HK", assetName: "HongKong", isoCode: "HK", region: .asia, difficulty: .medium),
        Country(id: "HU", assetName: "Hungary", isoCode: "HU", region: .europe, difficulty: .medium),
        Country(id: "IS", assetName: "Iceland", isoCode: "IS", region: .europe, difficulty: .medium),
        Country(id: "IN", assetName: "India", isoCode: "IN", region: .asia, difficulty: .easy),
        Country(id: "ID", assetName: "Indonesia", isoCode: "ID", region: .asia, difficulty: .easy),
        Country(id: "IR", assetName: "IranIslamicRepublicof", isoCode: "IR", region: .asia, difficulty: .medium),
        Country(id: "IQ", assetName: "Iraq", isoCode: "IQ", region: .asia, difficulty: .medium),
        Country(id: "IE", assetName: "Ireland", isoCode: "IE", region: .europe, difficulty: .easy),
        Country(id: "IM", assetName: "IsleofMan", isoCode: "IM", region: .europe, difficulty: .hard),
        Country(id: "IL", assetName: "Israel", isoCode: "IL", region: .asia, difficulty: .easy),
        Country(id: "IT", assetName: "Italy", isoCode: "IT", region: .europe, difficulty: .easy),
        Country(id: "JM", assetName: "Jamaica", isoCode: "JM", region: .americas, difficulty: .medium),
        Country(id: "JP", assetName: "Japan", isoCode: "JP", region: .asia, difficulty: .easy),
        Country(id: "JE", assetName: "Jersey", isoCode: "JE", region: .europe, difficulty: .hard),
        Country(id: "JO", assetName: "Jordan", isoCode: "JO", region: .asia, difficulty: .medium),
        Country(id: "KZ", assetName: "Kazakhstan", isoCode: "KZ", region: .asia, difficulty: .medium),
        Country(id: "KE", assetName: "Kenya", isoCode: "KE", region: .africa, difficulty: .easy),
        Country(id: "KI", assetName: "Kiribati", isoCode: "KI", region: .oceania, difficulty: .hard),
        Country(id: "KP", assetName: "KoreaDemocraticPeoplesRepublicof", isoCode: "KP", region: .asia, difficulty: .medium),
        Country(id: "KR", assetName: "KoreaRepublicof", isoCode: "KR", region: .asia, difficulty: .easy),
        Country(id: "XK", assetName: "Kosovo", isoCode: "XK", region: .europe, difficulty: .medium),
        Country(id: "KW", assetName: "Kuwait", isoCode: "KW", region: .asia, difficulty: .medium),
        Country(id: "KG", assetName: "Kyrgyzstan", isoCode: "KG", region: .asia, difficulty: .medium),
        Country(id: "LA", assetName: "LaoPeoplesDemocraticRepublic", isoCode: "LA", region: .asia, difficulty: .medium),
        Country(id: "LV", assetName: "Latvia", isoCode: "LV", region: .europe, difficulty: .medium),
        Country(id: "LB", assetName: "Lebanon", isoCode: "LB", region: .asia, difficulty: .easy),
        Country(id: "LS", assetName: "Lesotho", isoCode: "LS", region: .africa, difficulty: .hard),
        Country(id: "LR", assetName: "Liberia", isoCode: "LR", region: .africa, difficulty: .medium),
        Country(id: "LY", assetName: "Libya", isoCode: "LY", region: .africa, difficulty: .medium),
        Country(id: "LI", assetName: "Liechtenstein", isoCode: "LI", region: .europe, difficulty: .medium),
        Country(id: "LT", assetName: "Lithuania", isoCode: "LT", region: .europe, difficulty: .medium),
        Country(id: "LU", assetName: "Luxembourg", isoCode: "LU", region: .europe, difficulty: .medium),
        Country(id: "MO", assetName: "Macao", isoCode: "MO", region: .asia, difficulty: .medium),
        Country(id: "MG", assetName: "Madagascar", isoCode: "MG", region: .africa, difficulty: .medium),
        Country(id: "MW", assetName: "Malawi", isoCode: "MW", region: .africa, difficulty: .medium),
        Country(id: "MY", assetName: "Malaysia", isoCode: "MY", region: .asia, difficulty: .medium),
        Country(id: "MV", assetName: "Maldives", isoCode: "MV", region: .asia, difficulty: .medium),
        Country(id: "ML", assetName: "Mali", isoCode: "ML", region: .africa, difficulty: .medium),
        Country(id: "MT", assetName: "Malta", isoCode: "MT", region: .europe, difficulty: .medium),
        Country(id: "MH", assetName: "MarshallIslands", isoCode: "MH", region: .oceania, difficulty: .hard),
        Country(id: "MQ", assetName: "Martinique", isoCode: "MQ", region: .americas, difficulty: .hard),
        Country(id: "MR", assetName: "Mauritania", isoCode: "MR", region: .africa, difficulty: .hard),
        Country(id: "MU", assetName: "Mauritius", isoCode: "MU", region: .africa, difficulty: .medium),
        Country(id: "YT", assetName: "Mayotte", isoCode: "YT", region: .africa, difficulty: .hard),
        Country(id: "MX", assetName: "Mexico", isoCode: "MX", region: .americas, difficulty: .easy),
        Country(id: "FM", assetName: "MicronesiaFederatedStatesof", isoCode: "FM", region: .oceania, difficulty: .hard),
        Country(id: "MD", assetName: "MoldovaRepublicof", isoCode: "MD", region: .europe, difficulty: .medium),
        Country(id: "MC", assetName: "Monaco", isoCode: "MC", region: .europe, difficulty: .medium),
        Country(id: "MN", assetName: "Mongolia", isoCode: "MN", region: .asia, difficulty: .medium),
        Country(id: "ME", assetName: "Montenegro", isoCode: "ME", region: .europe, difficulty: .medium),
        Country(id: "MS", assetName: "Montserrat", isoCode: "MS", region: .americas, difficulty: .hard),
        Country(id: "MA", assetName: "Morocco", isoCode: "MA", region: .africa, difficulty: .easy),
        Country(id: "MZ", assetName: "Mozambique", isoCode: "MZ", region: .africa, difficulty: .medium),
        Country(id: "MM", assetName: "Myanmar", isoCode: "MM", region: .asia, difficulty: .medium),
        Country(id: "NA", assetName: "Namibia", isoCode: "NA", region: .africa, difficulty: .medium),
        Country(id: "NR", assetName: "Nauru", isoCode: "NR", region: .oceania, difficulty: .hard),
        Country(id: "NP", assetName: "Nepal", isoCode: "NP", region: .asia, difficulty: .easy),
        Country(id: "NL", assetName: "Netherlands", isoCode: "NL", region: .europe, difficulty: .easy),
        Country(id: "NC", assetName: "NewCaledonia", isoCode: "NC", region: .oceania, difficulty: .hard),
        Country(id: "NZ", assetName: "NewZealand", isoCode: "NZ", region: .oceania, difficulty: .easy),
        Country(id: "NI", assetName: "Nicaragua", isoCode: "NI", region: .americas, difficulty: .medium),
        Country(id: "NE", assetName: "Niger", isoCode: "NE", region: .africa, difficulty: .hard),
        Country(id: "NG", assetName: "Nigeria", isoCode: "NG", region: .africa, difficulty: .easy),
        Country(id: "NU", assetName: "Niue", isoCode: "NU", region: .oceania, difficulty: .hard),
        Country(id: "NF", assetName: "NorfolkIsland", isoCode: "NF", region: .oceania, difficulty: .hard),
        Country(id: "MK", assetName: "NorthMacedonia", isoCode: "MK", region: .europe, difficulty: .medium),
        Country(id: "MP", assetName: "NorthernMarianaIslands", isoCode: "MP", region: .oceania, difficulty: .hard),
        Country(id: "NO", assetName: "Norway", isoCode: "NO", region: .europe, difficulty: .easy),
        Country(id: "OM", assetName: "Oman", isoCode: "OM", region: .asia, difficulty: .medium),
        Country(id: "PK", assetName: "Pakistan", isoCode: "PK", region: .asia, difficulty: .easy),
        Country(id: "PW", assetName: "Palau", isoCode: "PW", region: .oceania, difficulty: .hard),
        Country(id: "PS", assetName: "PalestineStateof", isoCode: "PS", region: .asia, difficulty: .medium),
        Country(id: "PA", assetName: "Panama", isoCode: "PA", region: .americas, difficulty: .medium),
        Country(id: "PG", assetName: "PapuaNewGuinea", isoCode: "PG", region: .oceania, difficulty: .medium),
        Country(id: "PY", assetName: "Paraguay", isoCode: "PY", region: .americas, difficulty: .medium),
        Country(id: "PE", assetName: "Peru", isoCode: "PE", region: .americas, difficulty: .easy),
        Country(id: "PH", assetName: "Philippines", isoCode: "PH", region: .asia, difficulty: .easy),
        Country(id: "PN", assetName: "Pitcairn", isoCode: "PN", region: .oceania, difficulty: .hard),
        Country(id: "PL", assetName: "Poland", isoCode: "PL", region: .europe, difficulty: .easy),
        Country(id: "PT", assetName: "Portugal", isoCode: "PT", region: .europe, difficulty: .easy),
        Country(id: "PR", assetName: "PuertoRico", isoCode: "PR", region: .americas, difficulty: .medium),
        Country(id: "QA", assetName: "Qatar", isoCode: "QA", region: .asia, difficulty: .medium),
        Country(id: "RE", assetName: "Reunion", isoCode: "RE", region: .africa, difficulty: .hard),
        Country(id: "RO", assetName: "Romania", isoCode: "RO", region: .europe, difficulty: .medium),
        Country(id: "RU", assetName: "RussianFederation", isoCode: "RU", region: .europe, difficulty: .easy),
        Country(id: "RW", assetName: "Rwanda", isoCode: "RW", region: .africa, difficulty: .medium),
        Country(id: "BL", assetName: "SaintBarthelemy", isoCode: "BL", region: .americas, difficulty: .hard),
        Country(id: "SH", assetName: "SaintHelenaAscensionandTristandaCunha", isoCode: "SH", region: .africa, difficulty: .hard),
        Country(id: "KN", assetName: "SaintKittsandNevis", isoCode: "KN", region: .americas, difficulty: .hard),
        Country(id: "LC", assetName: "SaintLucia", isoCode: "LC", region: .americas, difficulty: .hard),
        Country(id: "MF", assetName: "SaintMartinFrenchpart", isoCode: "MF", region: .americas, difficulty: .hard),
        Country(id: "PM", assetName: "SaintPierreandMiquelon", isoCode: "PM", region: .americas, difficulty: .hard),
        Country(id: "VC", assetName: "SaintVincentandtheGrenadines", isoCode: "VC", region: .americas, difficulty: .hard),
        Country(id: "WS", assetName: "Samoa", isoCode: "WS", region: .oceania, difficulty: .medium),
        Country(id: "SM", assetName: "SanMarino", isoCode: "SM", region: .europe, difficulty: .medium),
        Country(id: "ST", assetName: "SaoTomeandPrincipe", isoCode: "ST", region: .africa, difficulty: .hard),
        Country(id: "SA", assetName: "SaudiArabia", isoCode: "SA", region: .asia, difficulty: .easy),
        Country(id: "SN", assetName: "Senegal", isoCode: "SN", region: .africa, difficulty: .medium),
        Country(id: "RS", assetName: "Serbia", isoCode: "RS", region: .europe, difficulty: .medium),
        Country(id: "SC", assetName: "Seychelles", isoCode: "SC", region: .africa, difficulty: .hard),
        Country(id: "SL", assetName: "SierraLeone", isoCode: "SL", region: .africa, difficulty: .medium),
        Country(id: "SG", assetName: "Singapore", isoCode: "SG", region: .asia, difficulty: .easy),
        Country(id: "SX", assetName: "SintMaartenDutchpart", isoCode: "SX", region: .americas, difficulty: .hard),
        Country(id: "SK", assetName: "Slovakia", isoCode: "SK", region: .europe, difficulty: .medium),
        Country(id: "SI", assetName: "Slovenia", isoCode: "SI", region: .europe, difficulty: .medium),
        Country(id: "SB", assetName: "SolomonIslands", isoCode: "SB", region: .oceania, difficulty: .hard),
        Country(id: "SO", assetName: "Somalia", isoCode: "SO", region: .africa, difficulty: .medium),
        Country(id: "ZA", assetName: "SouthAfrica", isoCode: "ZA", region: .africa, difficulty: .easy),
        Country(id: "GS", assetName: "SouthGeorgiaandtheSouthSandwichIslands", isoCode: "GS", region: .antarctica, difficulty: .hard),
        Country(id: "SS", assetName: "SouthSudan", isoCode: "SS", region: .africa, difficulty: .hard),
        Country(id: "ES", assetName: "Spain", isoCode: "ES", region: .europe, difficulty: .easy),
        Country(id: "LK", assetName: "SriLanka", isoCode: "LK", region: .asia, difficulty: .medium),
        Country(id: "SD", assetName: "Sudan", isoCode: "SD", region: .africa, difficulty: .medium),
        Country(id: "SR", assetName: "Suriname", isoCode: "SR", region: .americas, difficulty: .hard),
        Country(id: "SJ", assetName: "SvalbardandJanMayen", isoCode: "SJ", region: .europe, difficulty: .hard),
        Country(id: "SE", assetName: "Sweden", isoCode: "SE", region: .europe, difficulty: .easy),
        Country(id: "CH", assetName: "Switzerland", isoCode: "CH", region: .europe, difficulty: .easy),
        Country(id: "SY", assetName: "SyrianArabRepublic", isoCode: "SY", region: .asia, difficulty: .medium),
        Country(id: "TW", assetName: "TaiwanProvinceofChina", isoCode: "TW", region: .asia, difficulty: .medium),
        Country(id: "TJ", assetName: "Tajikistan", isoCode: "TJ", region: .asia, difficulty: .medium),
        Country(id: "TZ", assetName: "TanzaniaUnitedRepublicof", isoCode: "TZ", region: .africa, difficulty: .medium),
        Country(id: "TH", assetName: "Thailand", isoCode: "TH", region: .asia, difficulty: .easy),
        Country(id: "TL", assetName: "TimorLeste", isoCode: "TL", region: .asia, difficulty: .hard),
        Country(id: "TG", assetName: "Togo", isoCode: "TG", region: .africa, difficulty: .medium),
        Country(id: "TK", assetName: "Tokelau", isoCode: "TK", region: .oceania, difficulty: .hard),
        Country(id: "TO", assetName: "Tonga", isoCode: "TO", region: .oceania, difficulty: .hard),
        Country(id: "TT", assetName: "TrinidadandTobago", isoCode: "TT", region: .americas, difficulty: .medium),
        Country(id: "TN", assetName: "Tunisia", isoCode: "TN", region: .africa, difficulty: .easy),
        Country(id: "TR", assetName: "Turkiye", isoCode: "TR", region: .asia, difficulty: .easy),
        Country(id: "TM", assetName: "Turkmenistan", isoCode: "TM", region: .asia, difficulty: .hard),
        Country(id: "TC", assetName: "TurksandCaicosIslands", isoCode: "TC", region: .americas, difficulty: .hard),
        Country(id: "TV", assetName: "Tuvalu", isoCode: "TV", region: .oceania, difficulty: .hard),
        Country(id: "GB", assetName: "UK", isoCode: "GB", region: .europe, difficulty: .easy),
        Country(id: "US", assetName: "US", isoCode: "US", region: .americas, difficulty: .easy),
        Country(id: "UG", assetName: "Uganda", isoCode: "UG", region: .africa, difficulty: .medium),
        Country(id: "UA", assetName: "Ukraine", isoCode: "UA", region: .europe, difficulty: .easy),
        Country(id: "AE", assetName: "UnitedArabEmirates", isoCode: "AE", region: .asia, difficulty: .easy),
        Country(id: "UM", assetName: "UnitedStatesMinorOutlyingIslands", isoCode: "UM", region: .oceania, difficulty: .hard),
        Country(id: "UY", assetName: "Uruguay", isoCode: "UY", region: .americas, difficulty: .medium),
        Country(id: "UZ", assetName: "Uzbekistan", isoCode: "UZ", region: .asia, difficulty: .medium),
        Country(id: "VU", assetName: "Vanuatu", isoCode: "VU", region: .oceania, difficulty: .hard),
        Country(id: "VE", assetName: "VenezuelaBolivarianRepublicof", isoCode: "VE", region: .americas, difficulty: .medium),
        Country(id: "VN", assetName: "VietNam", isoCode: "VN", region: .asia, difficulty: .easy),
        Country(id: "VG", assetName: "VirginIslandsBritish", isoCode: "VG", region: .americas, difficulty: .hard),
        Country(id: "VI", assetName: "VirginIslandsUS", isoCode: "VI", region: .americas, difficulty: .hard),
        Country(id: "WF", assetName: "WallisandFutuna", isoCode: "WF", region: .oceania, difficulty: .hard),
        Country(id: "EH", assetName: "WesternSahara", isoCode: "EH", region: .africa, difficulty: .hard),
        Country(id: "YE", assetName: "Yemen", isoCode: "YE", region: .asia, difficulty: .medium),
        Country(id: "ZM", assetName: "Zambia", isoCode: "ZM", region: .africa, difficulty: .medium),
        Country(id: "ZW", assetName: "Zimbabwe", isoCode: "ZW", region: .africa, difficulty: .medium),
    ]
}
