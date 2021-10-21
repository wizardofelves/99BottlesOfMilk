class Bottles
  def verse(number)
    "#{displayed_bottles(number).capitalize} of milk on the wall, " \
      "#{displayed_bottles(number)} of milk.\n" +
      action(number) +
      "#{displayed_bottles(drank_one(number))} of milk on the wall.\n"
  end

  def verses(start, finish)
    start.downto(finish).to_a.map { |number| verse(number) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def drank_one(number)
    number_minus_one = number - 1
    number_minus_one >= 0 ? number_minus_one : 99
  end

  def action(number)
    case number
    when 0
      'Go to the store and buy some more, '
    when 1
      'Take it down and pass it around, '
    else
      'Take one down and pass it around, '
    end
  end

  def displayed_bottles(number)
    "#{displayed_number(number)} #{noun_of_bottle(number)}"
  end

  def displayed_number(number)
    number != 0 ? number : 'no more'
  end

  def noun_of_bottle(number)
    number == 1 ? 'bottle' : 'bottles'
  end
end
