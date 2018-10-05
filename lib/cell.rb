class Cell

  def get_live_neighbours(cell_coordinate, grid)
    neighbours = []
    get_neighbour_coordinates(cell_coordinate).each do |coordinate|
      if coordinate_inside_grid?(coordinate)
        neighbours << grid[coordinate[0]][coordinate[1]]
      end
    end
    count_live_cells(neighbours)
  end

  private

  def count_live_cells(neighbours)
    neighbours.flatten.count(1)
  end

  def get_neighbour_coordinates(coordinate)
    x = coordinate[0]
    y = coordinate[1]

    neighbours = []
    neighbours << [x - 1, y + 1]
    neighbours << [x, y + 1]
    neighbours << [x + 1, y + 1]
    neighbours << [x - 1, y]
    neighbours << [x + 1, y]
    neighbours << [x - 1, y - 1]
    neighbours << [x, y - 1]
    neighbours << [x + 1, y - 1]

    neighbours
  end

  def coordinate_inside_grid?(coordinate)
    coordinate[0] >= 0 && coordinate[1] >= 0
  end
end
