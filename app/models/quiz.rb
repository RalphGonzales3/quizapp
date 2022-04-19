class Quiz < ApplicationRecord
	validates_presence_of :promt, :answer
	attr_accessor: :prompt, :answer

	def initialise(prompt, answer)
		@prompt = prompt
		@answer = answer
	end
end

p1 = "How many fingers do you have?\n(a) 10\n(b) 20"
p2 = "What colour are mangoes?\n(a) Red/Green\n(b)Yellow"

questions = [
     Question.new(p1, "a"),
     Question.new(p2, "b")
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if answer == question.answer
               score += 1
          end
     end
     puts "you got #{score} out of #{questions.length()}"
end

run_quiz(questions)
