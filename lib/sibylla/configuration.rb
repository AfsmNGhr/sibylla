module Sibylla
  class Configuration
    def initialize(config = {})
      config =
        YAML.load_file("#{Sibylla::Root}/configuration.yml").merge(config)
      config['pocketsphinx_params'] =
        pocketsphinx_params(config['pocketsphinx_params'])

      config.each do |key, value|
        value_set(key, value)

        define_singleton_method("#{key}=") do |val|
          instance_variable_set("@#{key}", val)
        end

        define_singleton_method(key) do
          instance_variable_get("@#{key}")
        end
      end
    end

    private

    def value_set(key, value)
      instance_variable_set(
        "@#{key}",
        if value.is_a?(Array)
          eval(value.join('; '))
        elsif value.is_a?(Hash)
          value.each do |k, v|
            value[k] = v.is_a?(Array) ? eval(v.join('; ')) : v
          end
        else
          value
        end
      )
    end

    def pocketsphinx_params(params)
      config = Pocketsphinx::Configuration.default
      params.each do |key, value|
        config[key] = value.is_a?(Array) ? eval(value.join('; ')) : value
      end
      config
    end
  end
end
