# coding: utf-8
# Ruby voice assistant
# author Alexsey Ermolaev afay.zangetsu@gmail.com

require 'fest'
require 'yaml'
require 'pocketsphinx-ruby'
Dir.glob(File.join('.', 'lib', '**', '*.rb'), &method(:require))

module Sibylla
  Root = File.join(Dir.home, '.sibylla')
  Tasks = Dir.glob(File.join(Root, 'tasks', '**', '**'))
  Scenarios =

  class << self
    def configuration
      @configuration ||= Sibylla::Configuration.new
    end

    def live_action
      Pocketsphinx::LiveSpeechRecognizer.new(
        Sibylla.configuration.pocketsphinx_params).recognize do |speech|
        Sibylla::Performer.new(Sibylla::Searcher.task(speech))
      end
    end
  end
end
