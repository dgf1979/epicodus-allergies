require('rspec')
require('allergies')

describe('String#allergies') do
  it('will return a list of allergies depending on the allergy score inputed') do
    expect((96).score()).to(eq("eggs, chocolate"))
  end

  it('will return error message if inputed value is not within the expected range') do
    expect((0).score()).to(eq("Allergy score number must be between 1 and 255"))
  end

end
