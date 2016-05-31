class Company < ActiveRecord::Base
  acts_as_nested_set
  validates :name, :price, presence: true
  validates :name, uniqueness: true

  after_save :get_subprice
  after_destroy :get_subprice

  private

  def get_subprice
    Company.all.each do |c|
      c.update_column(:subprice, c.self_and_descendants.map(&:price).sum) unless c.leaf?
    end
  end
end
