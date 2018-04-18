class GodCreatedController < ApplicationController
    # def god_create <- ACTION 이름은 got_create라고 하고 view파일이랑 routes에서는 'actionName'을 action의 이름으로 설정하셨네요!
    # action이름 = view 파일 이름 = routes에서 사용하는 이름 세개 모두 일치 하여야 합니다.
    # 해당 엑션에서 처리한 값들은 같은 이름의 view파일로만 @비둘기가 전송됩니다.
    # 액션이름으로 'actionName'과 같은 이름으로는 짓으시면 안되고 기능에 맞는 적절한 action이름으로 적어주시는게 바람직합니다.
    def actionName
        god_img = ["god_1.png", "god_2.png", "god_3.png"]
        attribute = ["멍청함", "똘끼", "우아함", "배고픔", "피곤함"]
        
        # @비둘기는 action에서 처리한 값을 view로 보내는 변수에만 사용합니다! 넵
        # 모든 변수가 @비둘기로 지정해야할 필요는 없습니다.
        # @text = 0 
        @text = attribute.sample(3) # attribute.sample(1) 이렇게 될경우에는 페이지 한번 로딩시 attribute에서 "하나"만 뽑게 됩니다. -- run project로 로딩되는 페이지를 확인해보세요
        @img = god_img.sample(3)
        
    end
end
