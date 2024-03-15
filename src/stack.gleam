import gleam/list

pub opaque type Stack(member) {
  Stack(content: List(member))
}

pub fn new() -> Stack(member) {
  Stack([])
}

pub fn push(s: Stack(member), new_element: member) -> Stack(member) {
  Stack([new_element, ..s.content])
}

pub fn is_empty(s: Stack(member)) -> Bool {
  list.is_empty(s.content)
}

pub fn peek(s: Stack(member)) -> Result(member, Nil) {
  list.first(s.content)
}

pub fn pop(s: Stack(member)) -> Result(#(Stack(member), member), Nil) {
  case s.content {
    [] -> Error(Nil)
    [a] -> Ok(#(Stack([]), a))
    [a, ..rest] -> Ok(#(Stack(rest), a))
  }
}
