# frozen_string_literal: true

module Novu
  class Api
    module Events
      def trigger_event(body)
        post("/events/trigger", body)
      end

      def trigger_bulk_event(body)
        post("/events/trigger/bulk", body)
      end

      def broadcast_event(body)
        post("/events/trigger/broadcast", body)
      end

      def cancel_triggered_event(transaction_id)
        delete("/events/trigger/#{transaction_id}")
      end
    end
  end
end