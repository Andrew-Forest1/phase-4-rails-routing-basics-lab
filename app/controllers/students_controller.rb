class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(:grade).reverse_order
        render json: students
    end

    def highest_grade
        student = Student.all.order(:grade).reverse_order[0]
        render json: student
    end
end
