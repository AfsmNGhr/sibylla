module Sibylla
  class Speech
    def initialize(string)
      fest = Fest.new(Sibylla.configuration.festival_params)
      fest.say(string.is_a?(Array) ? string.join(" - ") : string)
    end
  end
end
