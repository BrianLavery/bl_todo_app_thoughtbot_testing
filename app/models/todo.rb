class Todo < ApplicationRecord

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end

  def incomplete!
    update(completed_at: nil)
  end
end
