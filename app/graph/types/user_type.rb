module Types
  UserType = GraphQL::ObjectType.define do
    name "User"
    description "用户"

    field :id,   !types.ID
    field :name, !types.String
  end
end