import gleeunit
import gleeunit/should
import stack

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn should_create_empty_stack_test() {
  // when 
  let s = stack.new()

  // then
  s
  |> stack.is_empty
  |> should.be_true
}

pub fn should_add_element_test() {
  // given 
  let s = stack.new()

  // when 
  let s =
    s
    |> stack.push(1.0)

  // then 

  s
  |> stack.is_empty
  |> should.be_false
}
