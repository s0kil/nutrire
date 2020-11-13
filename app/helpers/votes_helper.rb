module VotesHelper
  def upvote_button(nutrient_id, user_id = current_user.id)
    button_to(
      'upvote',
      {
        controller: :votes,
        action: :create,
        user_id: user_id,
        nutrient_id: nutrient_id
      },
      method: :post
    )
  end

  def downvote_button(vote_id)
    button_to 'downvote', vote_path(vote_id), method: :delete
  end

  def voting_button(nutrient)
    return unless signed_in? # Only Logged In Users Can Vote

    vote = nutrient.votes.find { |v| v.user_id == current_user.id }

    if vote
      downvote_button(vote.id)
    else
      upvote_button(nutrient.id)
    end
  end
end
