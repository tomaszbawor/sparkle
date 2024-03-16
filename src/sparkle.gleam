import gleam/io
import stack

pub fn main() {
  let s = stack.new()
  io.debug(s)
}
