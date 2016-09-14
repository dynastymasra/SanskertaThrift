include "Exception.thrift"
include "Value.thrift"

namespace java id.co.squarecode.common.contract.area
#@namespace scala id.co.squarecode.common.contract.area
namespace go sanskerta.contract.areas

enum IsoAlphaCode {
    ALPHA2, ALPHA3
}

struct Country {
    1: optional Value.UUID idCountry
    2: required string name
    3: required i32 callingCode
    4: required map<IsoAlphaCode, string> isoCode
    5: optional Value.timestamp created
    6: optional Value.timestamp updated
}

service CountryService {
    string ping()

    Country createCountry(1: required Country Country) throws (1: Exception.DataAlreadyRegisteredException already,
        2: Exception.CommonException common, 3: Exception.FailedConversionException failed)

    Country getCountryById(1: required Value.UUID idCountry) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.FailedConversionException convert, 3: Exception.CommonException common)

    Country getCountryByCallingCode(1: required i32 code) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.CommonException common)

    Country getCountryByName(1: required string name) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.CommonException common)

    list<Country> getAllCountry() throws (1: Exception.DataNotFoundException notFound,
        2: Exception.CommonException common)

    Country updateCountry(1: required Value.UUID idCountry, 2: required Country Country) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.CommonException common, 3: Exception.FailedConversionException convert)

    void softDeleteCountry(1: required Value.UUID idCountry) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.FailedConversionException convert, 3: Exception.CommonException common)

    void removeCountry(1: required Value.UUID idCountry) throws (1: Exception.DataNotFoundException notFound,
        2: Exception.CommonException common, 3: Exception.FailedConversionException convert)
}
