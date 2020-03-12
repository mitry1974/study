module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for i in 0..self.length - 1
          yield self[i]
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        result = MyArray.new
        my_each{ |el| result << yield(el) }
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new
        my_each{ |el| result << el if !el.nil? }
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce( acc= nil)
        my_each {|el| acc = acc.nil? ? el : yield(acc, el)}
        acc
      end
    end
  end
end
