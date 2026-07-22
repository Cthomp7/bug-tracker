class AddSeverityToTickets < ActiveRecord::Migration[8.1]
  def change
    add_column :tickets, :severity, :string
  end
end
