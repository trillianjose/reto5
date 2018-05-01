require 'yaml'

def make_questions
   questions_and_answers = YAML.load(File.open('questions_answers.yml'))

   questions_and_answers.each do |question_answer|
     puts "#{question_answer['question']} ==> "
     propose_answer = gets.chomp
     while propose_answer.downcase != question_answer['answer'].downcase
       puts 'Wrong answer! Try again'
       propose_answer = gets.chomp
     end
     puts 'You are Right!'
   end
   
   puts 'You have finish all the questions. Congratulations!'
end

make_questions
