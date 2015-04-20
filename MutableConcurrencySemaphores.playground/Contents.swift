
import Foundation

let first_queue = dispatch_queue_create("first", DISPATCH_QUEUE_CONCURRENT)
let second_queue = dispatch_queue_create("second", DISPATCH_QUEUE_CONCURRENT)
let semaphore = dispatch_semaphore_create(0)

var x = 5
dispatch_sync(first_queue) {
    x++
    dispatch_semaphore_signal(semaphore)
}
dispatch_async(second_queue) {
    x++
    dispatch_semaphore_signal(semaphore)
}

dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
println(x)
