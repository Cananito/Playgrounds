import Cocoa

let date = NSDate()
let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss a"
dateFormatter.locale = NSLocale(localeIdentifier: "en_US")
dateFormatter.timeZone = NSTimeZone(name: "CST")

let dateString = dateFormatter.stringFromDate(date)

let dts = dateFormatter.timeZone.daylightSavingTime
let name = dateFormatter.timeZone.name
let abbreviation = dateFormatter.timeZone.abbreviation
