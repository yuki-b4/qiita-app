module ArticlesHelper
 
    def hello(name)
      "こんにちは! #{name}さん。"
    end
   
    def to_yen(money)
      "#{money}円"
    end
   
    def addTax(money,rate)
     taxed_money =  (money*rate).round
     "税込#{taxed_money}円"
    end

    def title_name(author, title)
      "#{title} by #{author}"
    end

end
