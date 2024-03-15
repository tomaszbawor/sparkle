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
