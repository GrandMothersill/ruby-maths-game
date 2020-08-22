class Questions 
    attr_accessor :question, :answer

    def initialize
        numA = rand(1..20)
        numB = rand(1..20)
        @question = "What is #{numA.to_s} + #{numB.to_s}?"
        @answer = numA + numB
    end

end
