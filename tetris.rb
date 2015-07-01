
class Tetris
  

  def initialize
    # - - - -
    @shapes=[[3,0],[1,0]]
    @board=Board.new
  end

  def shapes
    # line = {1:[[4,0]] 2:[[1,0][1,0][1,0][1,0]]}
    right_l = [[3,0],[1,0]]

  end

  def play

    loop do
    
    move
    @board.show_board

    #stops until press enter
    gets
    end

  end

  def distance_left

    puts "How far from the left do you want to drom the shape?"
    gets.chomp.to_i

  end

  def move

    move=distance_left
    #j+move<20
    bottom=19

    @shapes.each_with_index do |spots, index|

      if spots[0]!=0

        for i in (0..spots[0]-1)

          while @board.field[bottom-index][move+i] != "0"
            bottom -= 1
          end

            @board.field[bottom-index][move+i] = "-"

        end
      end
    end
  end

end


class Board
  attr_reader  :field
  def initialize
    @field =[]

    for i in (0..19)
      @field<<[]
      for j in (0..19)
        @field[i][j]="0"
        #print @field[i][j]
      end
      #puts
    end
  end

  def show_board

    puts "Board"
    for i in (0..19)
      for j in (0..19)
        print @field[i][j] 
      end
      puts
    end
  end

end


t=Tetris.new
t.play








