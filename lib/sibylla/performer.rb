# coding: utf-8
module Sibylla
  class Performer
    def initialize(task)
      unless task.nil?
        eval(task.is_a?(Array) ? task.join('; ') : task)
      else
        Sibylla::Speech.new('Не п+онял команду')
      end
    end
  end
end
