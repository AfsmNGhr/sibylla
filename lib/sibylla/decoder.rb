module Sibylla
  class Decoder
    def initialize(file)
      configuration = Pocketsphinx::Configuration.default
      Sibylla.configuration.pocketsphinx_params.each do |key, value|
        configuration[key] = value
      end
      decoder = Pocketsphinx::Decoder.new(configuration)
      decoder.decode(file).hypothesis
    end
  end
end
