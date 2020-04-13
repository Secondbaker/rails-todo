# frozen_string_literal: true

class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy
  def completed?
    !completed_at.blank?
  end
end
