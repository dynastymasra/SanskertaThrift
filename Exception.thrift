namespace java com.twitter.finagle.axia.exception
namespace go sanskerta.contract.exception
#@namespace scala com.twitter.finagle.axia.exception

exception FailedConversionException {
    1: string description
}

exception DataNotFoundException {
    1: string description
}

exception DataAlreadyRegisteredException {
    1: string description
}

exception ForbiddenException {
    1: string description
}

exception CommonException {
    1: string description
}
