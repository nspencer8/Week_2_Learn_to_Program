class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'Your tree is dead, RIP!'
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges.'
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        'Oh, no! The tree is too old, and has died.'
      elsif @height > 5
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'The tree is still dead. No tree doctor could save it.'
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You have a yummy, delicious orange!'
      else
        'There are no oranges.'
      end
    else
      'The tree has died R.I.P!'
    end
  end
end

 ot = OrangeTree.new
   25.times do
   ot.one_year_passes
 end

 puts(ot.one_year_passes)
 puts(ot.count_the_oranges)
 puts(ot.height)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.height)
 puts(ot.count_the_oranges)
 puts(ot.pick_an_orange)
