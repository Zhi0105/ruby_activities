class Teacher
    def teach(lesson)
        SchoolName.new.prepare(lesson)
    end
end

class SchoolName
    def prepare(lesson)
        puts lesson
    end
end

female_teacher = Teacher.new
female_teacher.teach("Sample Lesson Name")