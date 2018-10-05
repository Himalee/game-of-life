require 'cell'
require 'grid'

describe Cell do
  let :grid { Grid.new([[0, 1, 0], [1, 0, 1], [0, 1, 0]]) }

  it "returns 0 when every cell around it is empty" do
    almost_empty_grid = Grid.new([[0, 0, 0], [0, 1, 0], [0, 0, 0]])
    cell = Cell.new(almost_empty_grid)
    expect(cell.get_live_neighbours([1, 1])).to eq 0
  end

  it "returns number of living neighbours given grid and coordinate" do
    cell = Cell.new(grid)
    expect(cell.get_live_neighbours([1, 1])).to eq 4
  end

  it "returns number of living neighbours given grid and outer coordinate" do
    cell = Cell.new(grid)
    expect(cell.get_live_neighbours([0, 0])).to eq 2
  end

  it "returns number of living neighbours given grid and another outer coordinate" do
    almost_empty_grid = Grid.new([[0, 0, 0], [0, 1, 0], [0, 0, 0]])
    cell = Cell.new(almost_empty_grid)
    expect(cell.get_live_neighbours([0, 0])).to eq 1
  end
end
