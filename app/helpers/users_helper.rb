module UsersHelper
  def calc_age(date)
    d1=date.strftime("%Y%m%d").to_i
    d2=Date.today.strftime("%Y%m%d").to_i
    return (d2 - d1) / 10000
  end
end
