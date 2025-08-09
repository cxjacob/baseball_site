module MembersHelper
  def jp_position(pos)
    case pos.to_s.upcase
    when "P"  then "投手"
    when "C"  then "捕手"
    when "IF" then "内野"
    when "OF" then "外野"
    else pos
    end
  end
end
