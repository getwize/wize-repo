module ApplicationHelper
  def card_fields_class
    "collapse" if current_user.card_last4?
  end
end
