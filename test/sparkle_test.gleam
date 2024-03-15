import gleeunit
import gleeunit/should
import stack

pub fn main() {
  gleeunit.main()
}

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

pub fn should_peek_element_test() {
  // given 
  let s =
    stack.new()
    |> stack.push(5)
    |> stack.push(1)

  // when 
  let first = stack.peek(s)

  // then 
  first
  |> should.equal(Ok(1))
}

pub fn should_return_error_when_peek_empty_test() {
  // given 
  let s = stack.new()

  // when 
  let err = stack.peek(s)

  // then
  err
  |> should.equal(Error(Nil))
}

pub fn should_pop_element_test() {
  // given
  let s =
    stack.new()
    |> stack.push(10)

  // when then
  case stack.pop(s) {
    Error(_) -> should.fail()
    Ok(#(s, elem)) -> {
      s
      |> should.equal(stack.new())
      elem
      |> should.equal(10)
    }
  }
}
