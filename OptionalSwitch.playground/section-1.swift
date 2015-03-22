let userName: String? = "Test"
let userEmail: String? = "Ok"
var userIdentity: String?

switch (userName, userEmail) {
case (.None, .None):
    userIdentity = "Someone"
case (let un, let ue):
    userIdentity = "\(userName) (\(userEmail))"
case (let un, .None):
    userIdentity = userName!
case (.None, let ue):
    userIdentity = userEmail!
}
