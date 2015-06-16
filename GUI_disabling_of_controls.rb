#The field is initialized to zero. The user may manually enter a new value into the field, 
#  increment its value with the "increment" button, or decrement the value with the "decrement" button.

#The input field should be enabled only when its value is zero. The "increment" button only as long as the 
#  field's value is less then 10: When the value 10 is reached, the button should go into a disabled state. 
#  Analogously, the "decrement" button should be enabled only as long as the value is greater than zero.

#Effectively, the user can now either increment up to 10, or down to zero. Manually entering values outside 
#  that range is still legal, but the buttons should reflect that and enable/disable accordingly.

Shoes.app do
  @number = edit_line
  @number.change {update_controls}
 
  @incr = button('Increment') {update_controls(@number.text.to_i + 1)}
  @decr = button('Decrement') {update_controls(@number.text.to_i - 1)}
 
  def update_controls(value = @number.text.to_i)
    @number.text = value
    @incr.state = value.to_i >= 10 ? "disabled" : nil
    @decr.state = value.to_i <=  0 ? "disabled" : nil
  end
 
  update_controls 0
end
