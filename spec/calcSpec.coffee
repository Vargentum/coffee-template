describe 'Calculator', ->
  
  it 'can add two numbers', ->
    calculator = new Calculator()
    result = calculator.add 5, 6
    expect(result).toBe 11

  it 'can multiply two numbers', ->
    calculator = new Calculator()
    result = calculator.mul 5, 6
    expect(result).toBe 30
    
  it 'can fly', ->
    calculator = new Calculator()
    result = calculator.fly()
    expect(res).toBeDefined()

  
    