module ApplicationHelper
  def formatter_date(created_at)
    created_at.strftime("%d/%m/%Y")
  end

  def formatter_time(created_at)
    created_at.strftime("%H:%M")
  end

  def formatter_money(value)
    number_to_currency(value, unit: "R$", separator: ",", delimiter: ".")
  end
end
