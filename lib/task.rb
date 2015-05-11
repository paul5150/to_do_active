class Task < ActiveRecord::Base
  scope(:not_done, -> do
    where({:done => false})
  end)

  scope(:done, -> do
    where({:done => true})
  end)

  belongs_to(:list)
end
