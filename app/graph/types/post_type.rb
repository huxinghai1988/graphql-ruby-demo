module Types
  PostType = GraphQL::ObjectType.define do
    name "Post"
    description "文章"

    field :id,   !types.ID
    field :body, !types.String
    field :user, UserType
    field :comments, types[CommentType]
  end
end