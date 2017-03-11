module Types
  CommentType = GraphQL::ObjectType.define do
    name "Comment"
    description "评论"

    field :id,   !types.ID
    field :body, !types.String
    field :user, UserType
  end
end