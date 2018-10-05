class Display

  def initialize(output = stdout)
    @output = output
  end

  def display_grid(grid)
    formatted_grid = ""
    grid.each do |row|
      formatted_grid << format_row(row)
      formatted_grid << "\n"
    end
    @output.puts formatted_grid
  end

  private

  def format_row(row)
    formatted_row = ""
    row.each do |cell|
      if cell == 0
        formatted_row << " "
      elsif cell == 1
        formatted_row << "@"
      end
    end
    formatted_row
  end
end
