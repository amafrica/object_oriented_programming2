class Receipt

  attr_accessor :total_items

  def initialize
    @total_items = []
  end

  def sub_total
    all_sub_total = 0
    @total_items.each do |item|
      all_sub_total += item.cost
    end
    all_sub_total
  end

  def tax_total
    all_tax_total = 0
    @total_items.each do |item|
      all_tax_total += item.total_tax
    end
    all_tax_total
  end

  def total_cost
    tax_total + sub_total
  end

  def report
    @total_items.each do |item|
      puts "1 #{item.name} at $#{item.cost}"
    end

    puts ""
    # puts "Total Sales Tax: #{tax_total}"
    puts "Total Sales Tax: #{'%.2f' % tax_total}"

    # puts "Total: #{total_cost}"
    puts "Total: #{'%.2f' % total_cost}"
  end

end
