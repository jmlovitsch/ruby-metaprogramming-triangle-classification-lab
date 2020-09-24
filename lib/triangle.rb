class Triangle

  class TriangleError < StandardError
  end


      def initialize(side1, side2, side3)
        @side1 = side1.to_f
        @side2 = side2.to_f
        @side3 = side3.to_f
        @all = []
        @all << side1
        @all << side2
        @all << side3
      end


      def kind
        if (@all.any? { |side| side <= 0 })
            begin
              raise TriangleError
            # rescue  TriangleError => error
            #   puts error.message
            end
          elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
            begin
              raise TriangleError
            # rescue  TriangleError => error
            #   puts error.message
            end
          elsif @side1 == @side2 && @side2 == @side3
            :equilateral
          elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
            :isosceles
          else
            :scalene
        end
      end






end
