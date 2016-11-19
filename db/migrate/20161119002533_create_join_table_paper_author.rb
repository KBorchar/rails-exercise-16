class CreateJoinTablePaperAuthor < ActiveRecord::Migration
  def change
    create_join_table :Papers, :Authors do |t|
       t.index [:paper_id, :author_id]
       t.index [:author_id, :paper_id]
    end
  end
end
