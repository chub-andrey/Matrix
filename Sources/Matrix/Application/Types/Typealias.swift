

import Foundation

typealias EmptyClosureType = () -> Void
typealias BoolClosureType = (_ result: Bool) -> Void
typealias NumericClosureType = (_ result: String) -> Void

// get value from source
typealias ValueCallback<Type> = () -> Type
// set value in source
typealias SetValueCallback<Type> = (Type) -> Void
// push value out source
typealias PushValueCallback<Type> = (@escaping SetValueCallback<Type>) -> Void
