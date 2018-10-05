class World

  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def evolve

    @grid = [[0,0]]
  end
end
