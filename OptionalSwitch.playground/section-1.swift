
let userName: String? = "Test"
//let userEmail: String? = "Ok"
let userEmail: String? = nil
var userIdentity: String?

switch (userName, userEmail) {
case (nil, nil):
    userIdentity = "Someone"
case let (.Some(userName), .Some(userEmail)):
    userIdentity = "\(userName) (\(userEmail))"
case let (.Some(userName), nil):
    userIdentity = userName
case let (nil, .Some(userEmail)):
    userIdentity = userEmail
}
