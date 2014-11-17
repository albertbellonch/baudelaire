ActiveRecord::Schema.define do
  self.verbose = false

  create_table :tv_shows, force: true do |t|
    t.string :title
    t.string :kind
    t.text :description
    t.datetime :published_at
    t.timestamps
  end
end
