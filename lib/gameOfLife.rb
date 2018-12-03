class GameOfLife

    def initialize(state,neighbours,stateNeighbours)
        @state = state
        @neighbours = neighbours
        @stateNeighbours = stateNeighbours
    end

    def play()
        return :died if @state == :live && (@neighbours < 2 || @neighbours > 3) && @stateNeighbours == :live
        return :live if @state == :live && (@neighbours == 2 || @neighbours == 3) && @stateNeighbours == :live
        return :live if @state == :dead && @neighbours == 3 && @stateNeighbours == :live
    end

    
end