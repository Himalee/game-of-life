require 'display'

describe Display do
  let(:output) { StringIO.new }
  let(:display) { Display.new(output) }

  context "Initial Grid" do
    it "displays a grid it is given" do
      initial_grid = [[0, 1, 0], [0, 0, 0], [1, 1, 1]]
      display.display_grid(initial_grid)
      expect(output.string).to eql(" @ \n   \n@@@\n")
    end

    it "displays a different grid" do
      initial_grid = [[1, 1, 1], [0, 0, 0], [1, 0, 1]]
      display.display_grid(initial_grid)
      expect(output.string).to eql("@@@\n   \n@ @\n")
    end
  end
end
