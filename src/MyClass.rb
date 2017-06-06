
class MyClass #(change name)
 
  include GladeGUI

#  @path = File.dirname(__FILE__) + "/"

  def before_show()
    @button1 = "Hello World"
    @path = File.dirname(__FILE__) + "/"
    @image1 = @path + "flip.png"
    @entry1 = "Flip the coin"
  end


#  def show()
#    load_glade(__FILE__)
#    @label1 = "Hello World"
#    set_glade_all()
#    show_window()
#  end

  def button1__clicked(*argv)
    if rand(2) == 1
      @builder["entry1"].text = "Heads"
      @builder["image1"].file = @path + "heads.png"
    else
      @builder["entry1"].text = "Tails"
      @builder["image1"].file = @path + "tails.png"
    end
  end

end

