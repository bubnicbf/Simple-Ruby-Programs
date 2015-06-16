#a substantial part of the code deals with the interaction of program logic with GUI components.

#Typically, the following is needed:
#  - put values into input fields under program control
#  - read and check input from the user
#  - pop up dialogs to query the user for further information

#For a minimal "application", write a program that presents a form with three components to the user: 
#  A numeric input field ("Value") and two buttons ("increment" and "random").

#The field is initialized to zero. The user may manually enter a new value into the field, or increment its 
#  value with the "increment" button. Entering a non-numeric value should be either impossible, or issue an 
#  error message.

#Pressing the "random" button presents a confirmation dialog, and resets the field's value to a random value 
#  if the answer is "Yes".

Shoes.app(title: "GUI component interaction") do
  stack do
    textbox = edit_line
 
    textbox.change do
      textbox.text = textbox.text.gsub(/[^\d]/, '') and alert "Input must be a number!" if textbox.text !~ /^\d*$/
    end
 
    flow do
      button "Increment" do
        textbox.text = textbox.text.to_i + 1
      end
 
      button "Random" do
        textbox.text = rand 5000 if confirm "Do you want a random number?"
      end
    end
  end
end
