# Implement a class, that takes the input string of 81 chracters
# for example: '513687249849521637267349581158463972974218365326795418782934156635172894491856723'
# and prints it in the console as follows:
# 
#  +-----+-----+-----+
#  |5 1 3|6 8 7|2 4 9|
#  |8 4 9|5 2 1|6 3 7|
#  |2 6 7|3 4 9|5 8 1|
#  +-----+-----+-----+
#  |1 5 8|4 6 3|9 7 2|
#  |9 7 4|2 1 8|3 6 5|
#  |3 2 6|7 9 5|4 1 8|
#  +-----+-----+-----+
#  |7 8 2|9 3 4|1 5 6|
#  |6 3 5|1 7 2|8 9 4|
#  |4 9 1|8 5 6|7 2 3|
#  +-----+-----+-----+
#

class Sudoku
  def initialize(input)
      @input = input.split(//) 
      #przetwarzam ciąg znakow w tabele, rozbijam je na pojedyncze cyfry
  end

  def display_board
    puts '+-----+-----+-----+' 
    #wypisuje na ekran pierwsza linie z znakami pomocniczymi
    while !@input.empty? 
        #chce zeby wykonywalo sie dopoty dopoki nie skoncza sie znaki w inpucie
    3.times do
        3.times do 
            #zrob trzy razy znak na poczatku lini dwie przerwy
          print '|' #znak na poczatku linii
          2.times do #zrob dwie przerwy
            print @input.shift 
            print ' '
          end
          print @input.shift # znowu przerwa
        end
        puts '|' 
        #zastosowanie puts tutaj spowoduje przeskoczenie do kolejnej lini i kontynuowanie wykonywania pentli az do zakonczenia cyfr w inpucie
      end
      puts '+-----+-----+-----+'
      #wypisuje na ekran ostatnia linie z znakami pomocniczymi
  end
end
end
input = '513687249849521637267349581158463972974218365326795418782934156635172894491856723'
Sudoku.new(input).display_board
