class String
    define_method(:find_and_replace) do |word, replace|
      self.gsub!(word, replace)
    end
end
