# require 'minitest/autorun'
# require 'minitest/pride'
#
# def pins_still_standing(input_string)
#   frame = fully_knocked_down_frame
#
#   pin_locations(input_string).each { |pin| frame[pin - 1] = 'O' }
#
#   frame
# end
#
# def render_frame(frame)
#   "#{frame[9]} #{frame[8]} #{frame[7]} #{frame[6]}\n #{frame[5]} #{frame[4]} #{frame[3]}\n  #{frame[2]} #{frame[1]}\n   #{frame[0]}\n"
# end
#
# private
#
# def pin_locations(input_string)
#   input_string.split(" ").map(&:to_i)
# end
#
# def fully_knocked_down_frame
#   ["."] * 10
# end
#
#
#
#
# describe "bowling" do
#   describe "pins_still_standing" do
#     it "returns a knocked down first pin" do
#       result = pins_still_standing("2 3 4 5 6 7 8 9 10")
#
#       result.must_equal(["."] + ["O"] * 9)
#     end
#
#     it "returns a 7-10 split" do
#       result = pins_still_standing("7 10")
#
#       result.must_equal(["."] * 6 + ["O"] + ["."] * 2 + ["O"])
#     end
#   end
#
#   describe "render_frame" do
#     it "renders a top-down, 2d representation of the frame" do
#       expected = <<-pins
# O O O O
#  O O O
#   O O
#    O
# pins
#
#       result = render_frame(["O"] * 10)
#
#       result.must_equal(expected)
#     end
#   end
# end

class Bowling
  def initialize
    @pins = <<-pins
    6 7 8 9
    3 4 5
    1 2
    0
    pins
  end

  def pins
    @pins.tr("0-9", '.')
  end

  def place_pins(input)
    input.split(' ').each { |pin| @pins.tr!("#{pin.to_i-1}", "O") }
    pins
  end
end

bowl = Bowling.new
puts bowl.place_pins('1 2 3')
