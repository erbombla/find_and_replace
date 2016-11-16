require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('Replaces a whole word') do
    expect("hello world".find_and_replace()).to(eq("hello universe"))
  end
end
