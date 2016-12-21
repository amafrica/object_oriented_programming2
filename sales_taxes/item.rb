# class Item
#
#   attr_reader :price
#
#   def initialize
#     @price = price
#   end
#
# end
#
#
# class Sales < Item
#   def basic_sales_tax
#
#
#   end
#
# end
#
#  book = item.new("book", 12.49)
#  music_cd = item.new("music_cd", 14.99)
#  chocolate_bar = item.new("chocolate_bar", 0.85)

# ASSIGNMENT REVISIT
class Item

  attr_accessor :name, :cost, :tax_exempt, :import_status, :import_tax, :base_sales_tax

  def initialize(name, cost, tax_exempt, import_status, receipt)
    @name = name
    @cost = cost
    @tax_exempt = tax_exempt
    @import_status = import_status

    @cost.to_f
    receipt.total_items << self

    set_base_sales_tax
    set_import_tax

  end

  def set_base_sales_tax
    if @tax_exempt
      @base_sales_tax = 0
    else
      @base_sales_tax = @cost * 0.1
    end
  end

  def set_import_tax
    if @import_status == true
      @import_tax = @cost * 0.05
    else
      @import_tax = 0
    end
  end

  def total_tax
    @base_sales_tax + @import_tax
  end

  def total_cost
    @cost + @total_tax
  end

end
