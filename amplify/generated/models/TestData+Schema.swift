// swiftlint:disable all
import Amplify
import Foundation

extension TestData {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case sound
    case temperature
    case hvac
    case occupancy
    case timestamp
    case dt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let testData = TestData.keys
    
    model.pluralName = "TestData"
    
    model.fields(
      .id(),
      .field(testData.sound, is: .optional, ofType: .int),
      .field(testData.temperature, is: .optional, ofType: .int),
      .field(testData.hvac, is: .optional, ofType: .string),
      .field(testData.occupancy, is: .optional, ofType: .string),
      .field(testData.timestamp, is: .optional, ofType: .int),
      .field(testData.dt, is: .optional, ofType: .string)
    )
    }
}