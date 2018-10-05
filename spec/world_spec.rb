require 'world'

describe World do
  it "returns grid if empty" do
    world = World.new([])
    expect(world.grid).to eql []
  end

  it "returns a grid that isn't empty" do
    world = World.new([[0,1]])
    expect(world.grid).to eql [[0,1]]
  end

  context "game of life rules" do
    it "returns empty grid if there is single cell" do
      world = World.new([[0,1]])
      world.evolve
      expect(world.grid).to eql [[0,0]]
    end

    it "returns an empty grid if there is single cell" do
      world = World.new([[0,1,0]])
      world.evolve
      expect(world.grid).to eql [[0,0,0]]
    end

    it "returns empty grid if there is only one neighbour" do
      world = World.new([[1,1]])
      world.evolve
      expect(world.grid).to eql [[0,0]]
    end
  end
end
