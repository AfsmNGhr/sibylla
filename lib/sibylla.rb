# coding: utf-8
# Ruby voice assistant
# author Alexsey Ermolaev afay.zangetsu@gmail.com

require 'fest'
require 'yaml'
require 'pocketsphinx-ruby'
Dir.glob(File.join('.', 'lib', '**', '*.rb'), &method(:require))

module Sibylla
  Root = "#{Dir.home}/.sibylla"

  class << self
    def configuration
      @configuration ||= Sibylla::Configuration.new
    end

    def greeting
      Sibylla::Speech.new('Приветствую тебя, Я - Сивилла')
    end
  end
end
