require 'cell'

describe Cell do
  let :cell { described_class.new }
  let :grid { [[0, 1, 0], [1, 0, 1], [0, 1, 0]] }
  let :almost_empty_grid { [[0, 0, 0], [0, 1, 0], [0, 0, 0]] }

  it "returns 0 when every cell around it is empty" do
    expect(cell.get_live_neighbours([1, 1], almost_empty_grid)).to eq 0
  end

  it "returns number of living neighbours given world and coordinate" do
    expect(cell.get_live_neighbours([1, 1], grid)).to eq 4
  end

  it "returns number of living neighbours given world and outer coordinate" do
    expect(cell.get_live_neighbours([0, 0], grid)).to eq 2
  end

  it "returns number of living neighbours given world and another outer coordinate" do
    expect(cell.get_live_neighbours([0, 0], almost_empty_grid)).to eq 1
  end
end
