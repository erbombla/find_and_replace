require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('Replaces a whole word') do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end
  it('Replaces all instances of the character sequence specified') do
    expect("catherine concatenates code strings at the cathedral".find_and_replace("cat", "dog")).to(eq("dogherine condogenates code strings at the doghedral"))
  end
end
