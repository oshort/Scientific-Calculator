<h1>A Bug's Life</h1>

<h3>Bugz</h3>

1. Post Solution: operandTapped appends to end of string id displayLabel
2. Text input is not limited to view of the label we have defined 
3. After pressing the equals sign from just one number we get an 'invalid' return
4. After that number is returned (from bug 3), want to be able to use that as an operand

<h3>Potential Solutions</h3>

1. Create a BOOL to determine if the user is typing numbers and if so, input them into a new text field (seperately) as a new number that can be added, subtracted mutiplied or divided.
2. AutoShrink text within .storyboard file
3. Create a statement that recognizes when we have operand1 and returns it's value when we press the = button
4. Create a statement 


<h3>PseudoCode Solutions </h3>
1. In equalTapped put
brain.userIsTypingNumber = YES; In operandTapped, write an if statement that declares brain.userIsTypingNumber ==YES and if so, display the text in the titleLabel before re-alloc]init'ing the brain
2. Autoshrink- min font size 1 - accessible through Main.storyboard
3. 