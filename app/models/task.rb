class Task < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true
  validates :body, presence: true
  validates :address, presence: true
  validates :genre_id, numericality: { other_than: 1, message: "を選択してください" }
end
