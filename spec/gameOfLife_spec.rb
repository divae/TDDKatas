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

describe GameOfLife do

    it 'any live cell with fewer than two live neighbours dies, as if caused by underpopulation' do
        state = :live
        neighbours = 1
        stateNeighbours = :live
        gameOfLife = GameOfLife.new(state,neighbours,stateNeighbours)
        expect(gameOfLife.play()).to eq(:died)
    end

    it 'any live cell with more tha three live neighbours dies, as if by overcrowding' do
        state = :live
        neighbours = 1
        stateNeighbours = :live
        gameOfLife = GameOfLife.new(state,neighbours,stateNeighbours)
        expect(gameOfLife.play()).to eq(:died)
    end

    it 'any live cell with two or three live neighbours lives on to the next generation' do
        state = :live
        neighbours = 2
        stateNeighbours = :live
        gameOfLife = GameOfLife.new(state,neighbours,stateNeighbours)
        expect(gameOfLife.play()).to eq(:live)
    end

    it 'any dead cell with exactly three live neighbours becomes a live cell' do
        state = :dead
        neighbours = 3
        stateNeighbours = :live
        gameOfLife = GameOfLife.new(state,neighbours,stateNeighbours)
        expect(gameOfLife.play()).to eq(:live)
    end

end

