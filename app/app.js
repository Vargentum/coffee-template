(function() {
  var Calculator, calc;

  Calculator = (function() {
    function Calculator() {}

    Calculator.prototype.sum = function(a, b) {
      return a + b;
    };

    Calculator.prototype.mul = function(a, b) {
      return a * b;
    };

    return Calculator;

  })();

  calc = new Calculator();

  console.log(calc.sum(2, 6));

}).call(this);

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNhbGMuY29mZmVlIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0FBQUEsTUFBQTs7RUFBTTs7O3lCQUVKLEdBQUEsR0FBSyxTQUFDLENBQUQsRUFBSSxDQUFKO2FBQ0gsQ0FBQSxHQUFJO0lBREQ7O3lCQUdMLEdBQUEsR0FBSyxTQUFDLENBQUQsRUFBSSxDQUFKO2FBQ0gsQ0FBQSxHQUFJO0lBREQ7Ozs7OztFQUtQLElBQUEsR0FBVyxJQUFBLFVBQUEsQ0FBQTs7RUFFWCxPQUFPLENBQUMsR0FBUixDQUFZLElBQUksQ0FBQyxHQUFMLENBQVMsQ0FBVCxFQUFXLENBQVgsQ0FBWjtBQVpBIiwiZmlsZSI6ImNhbGMuanMiLCJzb3VyY2VSb290IjoiL3NvdXJjZS8iLCJzb3VyY2VzQ29udGVudCI6WyJjbGFzcyBDYWxjdWxhdG9yXG5cbiAgc3VtOiAoYSwgYikgLT5cbiAgICBhICsgYlxuXG4gIG11bDogKGEsIGIpIC0+XG4gICAgYSAqIGJcbiAgXG5cbiAgICBcbmNhbGMgPSBuZXcgQ2FsY3VsYXRvcigpXG5cbmNvbnNvbGUubG9nIGNhbGMuc3VtIDIsNiJdfQ==
