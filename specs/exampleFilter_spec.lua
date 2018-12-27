local exampleFilter = require '../scripts/exampleFilter'

describe('exampleFilter', function()
  it('adds numbers', function()
    assert.equal(5, exampleFilter.add(2,3))
  end)
end)