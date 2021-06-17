
class Instructor

    attr_accessor :name

    @@all= []

    def initialize(name)
        
        @name = name
        @@all << self

    end

    def self.all

        @@all

    end
    
    def pass_student(student, test_name)

        pass = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if pass
            pass.status= "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end

    end

    def fail_student(student, test_name)
        fail = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if fail
            fail.status= "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
