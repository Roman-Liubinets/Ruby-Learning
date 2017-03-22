class OrangeTree
  def initialize
    @tall = 0
    @age = 0
    @fruit = 0
    puts "Ви посадили зерно"
  end

  def heigth
    puts "Ваше дерево виросло на " + @tall.to_s
  end

  def countTheOranges
    puts 'The tree has ' + @fruit.to_s + ' oranges.'
  end

  def pickAnOrange
    if @fruit < 1
      puts "на дереві немає жодних апельскинів"
    else
        puts "ви зірвали з дерева 1 апельсин!"
        @fruit = @fruit - 1
    end
  end

  def oneYearPasses
    puts "Минув один рік!"
    @age = @age + 1
    @tall = @tall + 1
    @fruit = 0
    if dead?
      puts 'The Orange Tree dies'
      exit
    end

    if @age > 2
      @fruit = @age*10
    else
      @fruit = 0
    end
  end

  private

  def dead?
    if @age > 2
      exit
    end
  end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.heigth
tree.oneYearPasses
tree.heigth
tree.oneYearPasses
tree.countTheOranges
