class Players
    attr_accessor :lives, :current_player, :name

    def initialize(id)
        @name = "Player #{id}"
        @lives = 3
        @current_player = false
    end

end