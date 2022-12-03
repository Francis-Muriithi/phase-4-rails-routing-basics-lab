class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        grades = Student.order(grade: :DESC)
        render json:grades
    end

    # def highest_grade 
    #     highest_grade = Student.maximum(:grade)to include_json({
    #         first_name:, last_name:, grade:
    #       })
    #     render json:highest_grade.
    # end
end