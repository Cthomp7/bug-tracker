class Ticket < ApplicationRecord
  belongs_to :project

  validates :title, presence: true

  enum :status, {
    open: "Open",
    in_progress: "In Progress",
    blocked: "Blocked",
    resolved: "Resolved",
    closed: "Closed"
  }, prefix: true, validate: true

  enum :priority, {
    low: "Low",
    medium: "Medium",
    high: "High",
    urgent: "Urgent"
  }, prefix: true, validate: true

  enum :severity, {
    low: "Low",
    medium: "Medium",
    high: "High",
    critical: "Critical"
  }, prefix: true, validate: true
end
