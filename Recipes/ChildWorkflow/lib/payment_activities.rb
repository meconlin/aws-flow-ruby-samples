require_relative 'utils'

class PaymentActivities
  extend AWS::Flow::Activities

  activity :process_payment do
    {
      :version => "1.0",
      :default_task_list => $PAYMENT_ACTIVITY_TASK_LIST,
      :default_task_schedule_to_start_timeout => 30,
      :default_task_start_to_close_timeout => 30,
    }
  end

  def process_payment(amount, card)
    $logger << "process amount: #{amount} with card: #{card}\n"
  end
end
