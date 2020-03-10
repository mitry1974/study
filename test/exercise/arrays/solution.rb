module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |el| el > 0 ? array.max : el }
      end

      def search(array, query)
        index = array.index(query)
        index.nil? ? -1 : index
      end
    end
  end
end
