require 'grid'

describe Grid do
  it "returns grid if empty" do
    grid = Grid.new([])
    expect(grid.grid).to eql []
  end

  it "returns a grid that isn't empty" do
    grid = Grid.new([[0,1]])
    expect(grid.grid).to eql [[0,1]]
  end
end
