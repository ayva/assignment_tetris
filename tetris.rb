
class Tetris
  

  def initialize
    # - - - -
    @shapes=[[4,0],[0,0],[0,0],[0,0]]
    @board=Board.new
  end

  def play

    move
    @board.show_board
  end

  def move
    move=5
    #j+move<20
    bottom=20

    @shapes.each do |spots|

      
      if spots[0]!=0
        for i in (0..spots[0]-1)
          if @board.field[bottom-1][move+i]!=0
            @board.field[bottom-1][move+i] = "-"
          end
        end
        #print "#{@board.field[bottom-1][move+i]}"
      end
    end

    # for j in (0..shape[0][0]-1)
    #   field[bottom][j+move]=shape[j]
    #   print "#{field[20,j+move]}"
    # end
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








