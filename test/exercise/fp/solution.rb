module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        ratings = array.reduce([0, 0]) do |acc, film|
          rating = film['rating_kinopoisk'].to_f
          film['country'].to_s.include?(',') && rating > 0 ? [acc[0] + rating, acc[1] + 1] : acc
        end
        ratings[0] / ratings[1]
      end

      def chars_count(films, threshold)
        films.reduce(0) do |acc, film|
          film['rating_kinopoisk'].to_f >= threshold ? acc + film['name'].to_s.count('и') : acc
        end
      end
    end
  end
end
