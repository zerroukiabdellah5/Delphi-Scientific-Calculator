unit UCalculator;

interface

uses System.SysUtils, System.Math;

type
  TCalculator = class
  public
    function Add(n1, n2: Double): Double;
    function Subtract(n1, n2: Double): Double;
    function Multiply(n1, n2: Double): Double;
    function Divide(n1, n2: Double): Double;
    function SquareRoot(n: Double): Double;
  end;

implementation

function TCalculator.Add(n1, n2: Double): Double; begin Result := n1 + n2; end;
function TCalculator.Subtract(n1, n2: Double): Double; begin Result := n1 - n2; end;
function TCalculator.Multiply(n1, n2: Double): Double; begin Result := n1 * n2; end;
function TCalculator.Divide(n1, n2: Double): Double; 
begin 
  if n2 = 0 then raise Exception.Create('Error: Division by zero');
  Result := n1 / n2; 
end;
function TCalculator.SquareRoot(n: Double): Double; begin Result := Sqrt(n); end;

end.
