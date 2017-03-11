module Mutations

  AddPost = GraphQL::Relay::Mutation.define do
    name "AddPost"

    input_field :body, !types.String
    input_field :userId, !types.ID

    return_field :post, Types::PostType

    resolve ->(object, inputs, ctx) {
      post = Post.create!(body: inputs[:body], user_id: inputs[:userId])
      { post: post }
    }
  end

end