require 'dry-equalizer'
module Hydra
  module Grouper
    # A simple PORO that defines the basics of what we mean by a group.
    #
    # A Group is a set of people/users
    class GroupValueObject
      include Dry::Equalizer(:key)

      def initialize(name:, key:)
        @name = name
        @key = key
      end

      attr_reader :name, :key
      alias group_key key
    end
  end
end
