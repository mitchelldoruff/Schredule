enum Color{
  case red = "FF0000"
  case green = "00FF00"
  case yellow = "00FFFF"
}
var yellowCutoff = 5;
var redCutoff = 2;
getColor(recovery: Int)-> Color{
  if recovery > yellowCutoff {
    return .green;
  }else if recovery > redCutoff{
    return .yellow;
  }
  return .red;
}
