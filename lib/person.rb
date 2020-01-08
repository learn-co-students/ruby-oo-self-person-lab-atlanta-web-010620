# your code goes here
class Person 

    attr_reader :name 
    attr_accessor :balance

    def initialize(name) 
        @name=name 
        @balance = 25
        @happiness = 8 
        @hygiene = 8 
    end
    def bank_account
        @balance
    end
    def bank_account=(input)
        @balance = input 
    end
    def happiness 
        @happiness
    end
    def happiness=(input)
        if input >= 10 
            @happiness=10
        elsif input <=0 
            @happiness = 0 
        else 
            @happiness=input
        end
    end
    def hygiene 
        @hygiene
    end

    def hygiene=(input)
        if input >= 10 
            @hygiene=10
        elsif input <=0 
            @hygiene = 0 
        else 
            @hygiene=input
        end
    end

    def happy? 
        if @happiness>7 
            return true 
        else
            return false
        end
    end
        

    def clean? 
        if @hygiene>7 
            return true 
        else
            return false
        end
    end

    def get_paid(salary)
        @balance+=salary
        return 'all about the benjamins'
    end

    def take_bath 
        self.hygiene+=4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3 
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(input) 
        self.happiness+=3
        input.happiness+=3
        return "Hi #{input.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness-=2
            person.happiness-=2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness+=1
            person.happiness+=1            
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end

    end

end