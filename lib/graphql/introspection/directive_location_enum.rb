# frozen_string_literal: true
GraphQL::Introspection::DirectiveLocationEnum = GraphQL::EnumType.define do
  name "__DirectiveLocation"
  description "A Directive can be adjacent to many parts of the GraphQL language, a "\
              "__DirectiveLocation describes one such possible adjacencies."

  GraphQL::Directive::LOCATIONS.each do |location|
    value(location.to_s, GraphQL::Directive::LOCATION_DESCRIPTIONS[location], value: location)
  end
end
