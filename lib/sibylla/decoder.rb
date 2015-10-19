module Sibylla
  class Decoder
    def initialize(file)
      decoder =
        Pocketsphinx::Decoder.new(Sibylla.configuration.pocketsphinx_params)
      decoder.decode(file).hypothesis
    end
  end
end
